#' Cowplot reimplementation of ggsave.
#'
#' This function should behave just like \code{ggsave} from ggplot2,
#' with the main difference being that by default it doesn't use the Dingbats
#' font for pdf output. If you ever have trouble with this function, you can
#' use \code{ggplot2::ggsave()} instead.
#' @param filename Filename of plot
#' @param plot Plot to save, defaults to last plot displayed.
#' @param device Device to use, automatically extract from file name extension.
#' @param path Path to save plot to (if you just want to set path and not
#'    filename).
#' @param scale Scaling factor.
#' @param width Width (defaults to the width of current plotting window).
#' @param height Height (defaults to the height of current plotting window).
#' @param units Units for width and height when either one is explicitly specified (in, cm, or mm).
#' @param dpi DPI to use for raster graphics.
#' @param limitsize When \code{TRUE} (the default), \code{ggsave} will not
#'   save images larger than 50x50 inches, to prevent the common error of
#'   specifying dimensions in pixels.
#' @param ... Other arguments to be handed to the plot device.
#' @export
ggsave <- function(filename, plot = ggplot2::last_plot(), device = NULL, path = NULL, scale = 1,
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


# This was the previous implementation copying much of the ggplot2::ggsave
# code over. This seems unnecessary.
ggsave_old <- function(filename, plot = ggplot2::last_plot(),
                   device = NULL, path = NULL, scale = 1,
                   width = NA, height = NA, units = c("in", "cm", "mm"),
                   dpi = 300, limitsize = TRUE, ...) {

  dev <- plot_dev(device, filename, dpi = dpi)
  dim <- plot_dim(c(width, height), scale = scale, units = units,
                  limitsize = limitsize)

  if (!is.null(path)) {
    filename <- file.path(path, filename)
  }
  dev(file = filename, width = dim[1], height = dim[2], ...)
  on.exit(utils::capture.output(grDevices::dev.off()))
  grid::grid.draw(plot)

  invisible()
}

## from ggplot2 source code
plot_dim <- function(dim = c(NA, NA), scale = 1, units = c("in", "cm", "mm"),
                     limitsize = TRUE) {

  units <- match.arg(units)
  to_inches <- function(x) x / c(`in` = 1, cm = 2.54, mm = 2.54 * 10)[units]
  from_inches <- function(x) x * c(`in` = 1, cm = 2.54, mm = 2.54 * 10)[units]

  dim <- to_inches(dim) * scale

  if (any(is.na(dim))) {
    if (length(grDevices::dev.list()) == 0) {
      default_dim <- c(7, 7)
    } else {
      default_dim <- grDevices::dev.size() * scale
    }
    dim[is.na(dim)] <- default_dim[is.na(dim)]
    dim_f <- prettyNum(from_inches(dim), digits = 3)

    message("Saving ", dim_f[1], " x ", dim_f[2], " ", units, " image")
  }

  if (limitsize && any(dim >= 50)) {
    stop("Dimensions exceed 50 inches (height and width are specified in '",
         units, "' not pixels). If you're sure you a plot that big, use ",
         "`limitsize = FALSE`.", call. = FALSE)
  }

  dim
}

## from ggplot2 source code
plot_dev <- function(device, filename, dpi = 300) {
  if (is.function(device))
    return(device)

  eps <- function(...) {
    grDevices::postscript(..., onefile = FALSE, horizontal = FALSE,
                          paper = "special")
  }
  devices <- list(
    eps =  eps,
    ps =   eps,
    tex =  function(...) grDevices::pictex(...),
    pdf =  function(..., version = "1.4")
    { # modification relative to original ggplot2 code
      if ("useDingbats" %in% names(list(...)))
        grDevices::pdf(..., version=version)
      else
        grDevices::pdf(..., useDingbats = FALSE, version=version)
    },
    # grDevices::pdf(..., version = version), # original ggplot2 code at this location
    svg =  function(...) grDevices::svg(...),
    emf =  function(...) grDevices::win.metafile(...),
    wmf =  function(...) grDevices::win.metafile(...),
    png =  function(...) grDevices::png(..., res = dpi, units = "in"),
    jpg =  function(...) grDevices::jpeg(..., res = dpi, units = "in"),
    jpeg = function(...) grDevices::jpeg(..., res = dpi, units = "in"),
    bmp =  function(...) grDevices::bmp(..., res = dpi, units = "in"),
    tiff = function(...) grDevices::tiff(..., res = dpi, units = "in")
  )

  if (is.null(device)) {
    device <- tolower(tools::file_ext(filename))
  }

  if (!is.character(device) || length(device) != 1) {
    stop("`device` must be NULL, a string or a function.", call. = FALSE)
  }

  dev <- devices[[device]]
  if (is.null(dev)) {
    stop("Unknown graphics device '", device, "'", call. = FALSE)
  }
  dev
}

#' Alternative to ggsave, with better support for multi-figure plots.
#'
#' This function replaces the standard \code{ggsave} function for saving a plot into a file. It
#' has several advantages over \code{ggsave}. First, it uses default sizes that work well with
#' the cowplot theme, so that frequently a plot size does not have to be explicitly specified. Second, it
#' acknowledges that one often first develops individual plots and then combines them into
#' multi-plot figures, and it makes it easy---in combination with \code{plot_grid}---to carry out
#' this workflow. Finally, it makes it easy to adjust the aspect ratio of the figure, which is
#' frequently necessary to accommodate the figure legend.
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
#' @param base_height The height (in inches) of the plot or of one sub-plot if \code{nrow}
#' or \code{ncol} > 1. Default is 4.
#' @param base_width The width (in inches) of the plot or of one sub-plot if \code{nrow}
#' or \code{ncol} > 1. Default is \code{NULL}, which means that the width is calculated from
#' \code{height} and \code{base_aspect_ratio}.
#' @param base_aspect_ratio The aspect ratio of the plot or of one sub-plot if \code{nrow}
#' or \code{ncol} > 1. This argument is used if \code{base_width = NULL} or if \code{base_height = NULL};
#' if width or height is missing the aspect ratio will be used calculate the \code{NULL} value.
#' The default is 1.1, which works well for figures without a legend.
#' @param rows Deprecated. Like \code{nrow}.
#' @param cols Deprecated. Like \code{ncol}.
#' @param ... Other arguments to be handed to \code{ggsave}.
#' @examples
#' # save a single plot without legend
#' x <- (1:100)/10
#' p1 <- qplot(x, 2*x+5, geom='line')
#' save_plot("p1.pdf", p1)
#' # now combine with a second plot and save
#' p2B <- qplot(x, -x^2+10*x-3, geom='line')
#' p2 <- plot_grid(p1, p2B, labels=c("A", "B"))
#' save_plot("p2.pdf", p2, ncol = 2)
#' # save a single plot with legend, changing the aspect ratio to make room for the legend
#' p3 <- ggplot(mpg, aes(x = cty, y = hwy, colour = factor(cyl))) + geom_point(size=2.5)
#' save_plot("p3.png", p3, base_aspect_ratio = 1.3)
#' # same as p3 but determine base_height given base_aspect_ratio and base_width
#' p4 <- ggplot(mpg, aes(x = cty, y = hwy, colour = factor(cyl))) + geom_point(size=2.5)
#' save_plot("p4.png", p4, base_height = NULL, base_aspect_ratio = 1.618, base_width = 6)
#' # same as p4 but determine base_width given base_aspect_ratio and base_height
#' p5 <- ggplot(mpg, aes(x = cty, y = hwy, colour = factor(cyl))) + geom_point(size=2.5)
#' save_plot("p5.png", p5, base_height = 6, base_aspect_ratio = 1.618, base_width = NULL)
#' @export
save_plot <- function(filename, plot, ncol = 1, nrow = 1,
                      base_height = 4, base_aspect_ratio = 1.1, base_width = NULL, ...,
                      cols = NULL, rows = NULL ){

  if (!is.null(cols)){
    warning("Argument 'cols' is deprecated. Use 'ncol' instead.")
  }

  if (!is.null(rows)){
    warning("Argument 'rows' is deprecated. Use 'nrow' instead.")
  }

  # internally, this function operates with variables cols and rows instead of ncol and nrow
  if (!is.null(ncol)){
    cols <- ncol
  }
  if (!is.null(nrow)){
    rows <- nrow
  }

  if (is.null(base_height) & !is.null(base_width)) {
    base_height <- base_width / base_aspect_ratio
  }

  if (is.null(base_width) & !is.null(base_height)){
    base_width <- base_height * base_aspect_ratio
  }

  # make clear we're using the cowplot function, not the ggplot2 one
  cowplot::ggsave(filename = filename, plot = plot, width = base_width*cols, height = base_height*rows, ...)
}

