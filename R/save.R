#' Cowplot reimplementation of `ggsave()`.
#'
#' This function behaves just like [ggplot2::ggsave()]. The main difference is
#' that by default it doesn't use the Dingbats font for pdf output. The Dingbats font
#' causes problems with some pdf readers.
#' @param filename Filename of the plot.
#' @param plot Plot to save, defaults to last plot displayed.
#' @param device Device to use, automatically extract from file name extension.
#' @param path Path to save plot to (if you just want to set `path` and not
#'    `filename`).
#' @param scale Scaling factor.
#' @param width Width (defaults to the width of current plotting window).
#' @param height Height (defaults to the height of current plotting window).
#' @param units Units for width and height when either one is explicitly specified (in, cm, or mm).
#' @param dpi DPI to use for raster graphics.
#' @param limitsize When `TRUE` (the default), `ggsave2()` will not
#'   save images larger than 50x50 inches, to prevent the common error of
#'   specifying dimensions in pixels.
#' @param ... Other arguments to be handed to the plot device.
#' @export
ggsave2 <- function(filename, plot = ggplot2::last_plot(), device = NULL, path = NULL, scale = 1,
                        width = NA, height = NA, units = c("in", "cm", "mm"), dpi = 300, limitsize = TRUE, ...) {

  # arguments we want to hand off to ggplot2::ggsave only if explicitly provided
  ggsave_args <- c("plot", "path", "scale", "width", "height", "units", "dpi", "limitsize")

  # match ggsave_args to args provided
  args <- as.list(match.call())
  args[[1]] <- NULL # remove the function call
  args <- args[stats::na.omit(match(ggsave_args, names(args)))] # remove other args

  args_dotdotdot <- list(...)

  # if device isn't provided, try to infer from filename
  if (is.null(device)) {
    device <- tolower(tools::file_ext(filename))
  }

  if (identical(device, "pdf") || identical(device, grDevices::pdf)) {
    # pdf device specified either by filename extension or by character string
    # set useDingbats option unless provided

    if (!"useDingbats" %in% names(args_dotdotdot))
      args_dotdotdot <- append(args_dotdotdot, list(useDingbats = FALSE))

  }

  # combine all the args
  args <- c(list(filename = filename), args, device = device, args_dotdotdot)

  # call ggplot2::ggsave while saving and afterwards restoring the current graphics device
  cur_dev <- grDevices::dev.cur()
  x <- do.call(ggplot2::ggsave, args, envir = parent.frame())
  grDevices::dev.set(cur_dev)
  invisible(x)
}


#' Alternative to `ggsave()`, with better support for multi-figure plots.
#'
#' This function replaces the standard [ggplot2::ggsave()] function for saving a plot into a file. It
#' has several advantages over `ggsave()`. First, it uses default sizes that work well with
#' the cowplot theme, so that frequently a plot size does not have to be explicitly specified. Second, it
#' acknowledges that one often first develops individual plots and then combines them into
#' multi-plot figures, and it makes it easy---in combination with [plot_grid()]---to carry out
#' this workflow. Finally, it makes it easy to adjust the aspect ratio of the figure, which is
#' frequently necessary to accommodate plots with or without figure legend.
#'
#' The key idea for this function is that plots are often grids, with sup-plots at the individual
#' grid locations. Therefore, for this function we specify a base width and aspect ratio that apply
#' to one sup-plot, and we then specify how many rows and columns of subplots we have. This means that
#' if we have code that can save a single figure, it is trivial to adapt this code to save a combination
#' of multiple comparable figures. See examples for details.
#' @param filename Name of the plot file to generate.
#' @param plot Plot to save.
#' @param nrow Number of subplot rows.
#' @param ncol Number of subplot columns.
#' @param base_height The height (in inches) of the plot or of one sub-plot if `nrow`
#' or `ncol` > 1. Default is 3.71.
#' @param base_width The width (in inches) of the plot or of one sub-plot if `nrow`
#' or `ncol` > 1. Default is `NULL`, which means that the width is calculated from
#' `base_height` and `base_aspect_ratio`.
#' @param base_asp The aspect ratio (width/height) of the plot or of one sub-plot if `nrow`
#' or `ncol` > 1. This argument is used if `base_width = NULL` or if `base_height = NULL`;
#' if both width and height are provided then the aspect ratio is ignored.
#' The default is 1.618 (the golden ratio), which works well for figures with a legend.
#' @param base_aspect_ratio Deprecated. Use `base_asp`.
#' @param rows Deprecated. Use `nrow`.
#' @param cols Deprecated. Use `ncol`.
#' @param width Deprecated. Don't use.
#' @param height Deprecated. Don't use.
#' @param ... Other arguments to be handed to [ggsave2()].
#' @examples
#' \donttest{
#' library(ggplot2)
#'
#' # save a single plot with a legend
#' p1 <- ggplot(mpg, aes(x = cty, y = hwy, color = factor(cyl))) +
#'   geom_point(size = 2) +
#'   theme_half_open()
#'
#' file1 <- tempfile("file1", fileext = ".png")
#' file2 <- tempfile("file2", fileext = ".png")
#' save_plot(file1, p1)
#' # same as file1 but determine base_width given base_height
#' save_plot(file2, p1, base_height = NULL, base_width = 6)
#'
#' # save a single plot without legend, adjust aspect ratio
#' x <- (1:100)/10
#' p3 <- ggplot(data.frame(x = x, y = x*sin(x)), aes(x, y)) +
#'  geom_line() +
#'  theme_minimal_hgrid()
#' file3 <- tempfile("file3", fileext = ".pdf")
#' save_plot(file3, p3, base_asp = 1.1)
#'
#' # now combine with a second plot and save
#' p3b <- ggplot(data.frame(x = x, y = cos(x)+x), aes(x, y)) +
#'  geom_line() +
#'  theme_minimal_hgrid()
#' p4 <- plot_grid(p3, p3b, labels = "AUTO")
#' file4 <- tempfile("file4", fileext = ".pdf")
#' save_plot(file4, p4, ncol = 2, base_asp = 1.1)
#' }
#' @export
save_plot <- function(filename, plot, ncol = 1, nrow = 1,
                      base_height = 3.71, base_asp = 1.618, base_width = NULL, ...,
                      cols, rows, base_aspect_ratio, width, height){

  # internally, this function operates with variables cols, rows, and base_aspect_ratio
  if (missing(cols)) {
    cols <- ncol
  } else {
    warning("Argument 'cols' is deprecated. Use 'ncol' instead.")
  }

  if (missing(rows)) {
    rows <- nrow
  } else {
    warning("Argument 'rows' is deprecated. Use 'nrow' instead.")
  }

  if (missing(base_aspect_ratio)) {
    base_aspect_ratio <- base_asp
  }

  if (!missing(width)) {
    stop("Cannot use argument 'width' here. Did you mean 'base_width'?")
  }

  if (!missing(height)) {
    stop("Cannot use argument 'height' here. Did you mean 'base_height'?")
  }

  if (is.null(base_height) & !is.null(base_width)) {
    base_height <- base_width / base_aspect_ratio
  }

  if (is.null(base_width) & !is.null(base_height)){
    base_width <- base_height * base_aspect_ratio
  }

  # make clear we're using the cowplot function, not the ggplot2 one
  cowplot::ggsave2(filename = filename, plot = plot, width = base_width*cols, height = base_height*rows, ...)
}

