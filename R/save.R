# *************************************************
#                     Output
# *************************************************

#' Cowplot reimplementation of ggsave.
#'
#' This function should behave just like \code{ggsave()} from ggplot2,
#' with the main difference being that by default it doesn't use the Dingbats
#' font for pdf output. If you ever have trouble with this function, you can
#' try using \code{ggplot2::ggsave()} instead.
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
ggsave <- function(filename = NULL, plot = ggplot2::last_plot(),
                   device = default_device(filename), path = NULL, scale = 1,
                   width = graphics::par("din")[1], height = graphics::par("din")[2], units = c("in", "cm", "mm"),
                   dpi = 300, limitsize = TRUE, ...) {
  # this code is copied directly from ggplot2. ugly, but
  # the only way to implement this properly.

  if (is.null(filename)) stop("filename is required")
  if (!inherits(plot, "ggplot")) stop("plot should be a ggplot2 plot")

  eps <- ps <- function(..., width, height)
    grDevices::postscript(..., width=width, height=height, onefile=FALSE,
                          horizontal = FALSE, paper = "special")
  tex <- function(..., width, height)
    grDevices::pictex(..., width=width, height=height)
  pdf <- function(..., version="1.4"){
    if ("useDingbats" %in% names(list(...)))
      grDevices::pdf(..., version=version)
    else
      grDevices::pdf(..., useDingbats = FALSE, version=version)
  }
  svg <- function(...)
    grDevices::svg(...)
  wmf <- function(..., width, height)
    grDevices::win.metafile(..., width=width, height=height)
  emf <- function(..., width, height)
    grDevices::win.metafile(..., width=width, height=height)

  png <- function(..., width, height)
    grDevices::png(...,  width=width, height=height, res = dpi, units = "in")
  jpg <- jpeg <- function(..., width, height)
    grDevices::jpeg(..., width=width, height=height, res = dpi, units = "in")
  bmp <- function(..., width, height)
    grDevices::bmp(...,  width=width, height=height, res = dpi, units = "in")
  tiff <- function(..., width, height)
    grDevices::tiff(..., width=width, height=height, res = dpi, units = "in")

  default_device <- function(filename) {
    pieces <- strsplit(filename, "\\.")[[1]]
    ext <- tolower(pieces[length(pieces)])
    match.fun(ext)
  }

  units <- match.arg(units)
  convert_to_inches <- function(x, units) {
    x <- switch(units,
                `in` = x,
                cm = x / 2.54,
                mm = x / 2.54 /10
    )
  }

  convert_from_inches <- function(x, units) {
    x <- switch(units,
                `in` = x,
                cm = x * 2.54,
                mm = x * 2.54 * 10
    )
  }

  # dimensions need to be in inches for all graphic devices
  # convert width and height into inches when they are specified
  if (!missing(width)) {
    width <- convert_to_inches(width, units)
  }
  if (!missing(height)) {
    height <- convert_to_inches(height, units)
  }
  # if either width or height is not specified, display an information message
  # units are those specified by the user
  if (missing(width) || missing(height)) {
    message("Saving ", prettyNum(convert_from_inches(width * scale, units), digits=3), " x ", prettyNum(convert_from_inches(height * scale, units), digits=3), " ", units, " image")
  }

  width <- width * scale
  height <- height * scale

  if (limitsize && (width >= 50 || height >= 50)) {
    stop("Dimensions exceed 50 inches (height and width are specified in inches/cm/mm, not pixels).",
         " If you are sure you want these dimensions, use 'limitsize=FALSE'.")
  }

  if (!is.null(path)) {
    filename <- file.path(path, filename)
  }
  device(file=filename, width=width, height=height, ...)
  on.exit(utils::capture.output(grDevices::dev.off()))
  print(plot)

  invisible()
}

#' Alternative to ggsave, with better support for multi-figure plots.
#'
#' This function replaces the standard \code{ggsave()} function for saving a plot into a file. It
#' has several advantages over \code{ggsave()}. First, it uses default sizes that work well with
#' the cowplot theme, so that frequently a plot size does not have to be explicitly specified. Second, it
#' acknowledges that one often first develops individual plots and then combines them into
#' multi-plot figures, and it makes it easy---in combination with \code{plot_grid()}---to carry out
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
#' or \code{ncol} > 1. This argument is only used if \code{base_width = NULL}. The default is 1.1,
#' which works well for figures without a legend.
#' @param rows Deprecated. Like \code{nrow}.
#' @param cols Deprecated. Like \code{ncol}.
#' @param ... Other arguments to be handed to \code{ggsave()}.
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

  if (is.null(base_width)){
    base_width <- base_height * base_aspect_ratio
  }

  ggsave(filename = filename, plot = plot, width = base_width*cols, height = base_height*rows, ...)
}

