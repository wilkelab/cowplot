#' Sets the null graphics device
#'
#' The function [plot_to_gtable()] needs to open a graphics device to render ggplot objects into
#' grid graphics objects. Unfortunately, there is no universally reliable graphics device available
#' in R that always works. Therefore, this function allows you to switch out the null device.
#'
#' You need to be aware that some graphics devices cause side effects when used as null devices.
#' If you use an interactive device as null device, you may see an empty plot window pop up. Similarly,
#' if you use a graphics device that writes a file, then you may find empty plot files in your working
#' directory. The default null device, `pdf(NULL)`, does not cause these side effects. However, it has
#' has other limitations. On OS X, for example, it cannot use all the fonts that are available on the
#' system. The png device can use all fonts, but it will create empty plots called `"cowplot_null_plot.png"`.
#'
#' @param null_device Either a string that defines the null device ("pdf", "png", "cairo") or a function
#'   that returns a new graphics device.
#'
#' @examples
#' set_null_device("png") # set the png null device
#'
#' # create a jpeg null device
#' jpeg_null_device <- function(width, height) {
#'   jpeg(filename = "jpeg_null_plot.jpg",
#'        width = width, height = height, units = "in", res = 96)
#'   dev.control("enable")
#'}
#' set_null_device(jpeg_null_device)
#' @export
set_null_device <- function(null_device) {
  old <- null_dev_env$current

  if (methods::is(null_device, "function")) {
    null_dev_env$current <- null_device
  } else {
    null_dev_env$current <- switch(null_device,
      pdf = pdf_null_device,
      png = png_null_device,
      cairo = cairo_null_device,
      Cairo = cairo_null_device,
      {
        warning("Null device ", null_device, " not recognized. Substituting grDevices::pdf().", call. = FALSE);
        pdf_null_device
      }
    )
  }

  invisible(old)
}

png_null_device <- function(width, height) {
  grDevices::png(filename = "cowplot_null_plot.png", width = width, height = height,
                 units = "in", res = 96)
  dev.control("enable")
}

pdf_null_device <- function(width, height) {
  grDevices::pdf(NULL, width = width, height = height)
  dev.control("enable")
}

cairo_null_device <- function(width, height) {
  if (requireNamespace("Cairo", quietly = TRUE)) {
    Cairo::Cairo(type = "raster", width = width, height = height,
                 units = "in")
    dev.control("enable")
  } else {
    warning("Package `Cairo` is required to use the Cairo null device. Substituting grDevices::pdf(NULL).", call. = FALSE)
    pdf_null_device(width, height)
  }
}

# the null device is stored in an environment
# default upon start up is pdf null device
null_dev_env <- new.env(parent = emptyenv())
null_dev_env$current <- pdf_null_device

