#' Sets the null graphics device
#'
#' The function [as_grob()] needs to open a graphics device to render ggplot objects into
#' grid graphics objects. Unfortunately, there is no universally reliable graphics device available
#' in R that always works. Therefore, this function allows you to switch out the null device.
#'
#' You need to be aware that some graphics devices cause side effects when used as null devices.
#' If you use an interactive device as null device, you may see an empty plot window pop up. Similarly,
#' if you use a graphics device that writes a file, then you may find temporary files associated
#' with the device. The default null device, `pdf(NULL)`, does not cause these side effects. However, it has
#' has other limitations. For example, on OS X, it cannot use all the fonts that are available on the
#' system. The ragg device can use all fonts, but it will create temporary files.
#'
#' @param null_device Either a string that defines the null device ("pdf", "png", "cairo", "agg")
#'  or a function that returns a new graphics device.
#'
#' @examples
#' set_null_device("png") # set the png null device
#'
#' # create a jpeg null device
#' jpeg_null_device <- function(width, height) {
#'   jpeg(
#'     filename = tempfile(pattern = "jpeg_null_plot", fileext = ".jpg"),
#'     width = width, height = height, units = "in", res = 96
#'    )
#'   dev.control("enable")
#'}
#' set_null_device(jpeg_null_device)
#' @seealso
#' Available null devices are: [`pdf_null_device()`], [`png_null_device()`],
#'   [`cairo_null_device()`], [`agg_null_device()`]
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
      agg = agg_null_device,
      {
        warning("Null device ", null_device, " not recognized. Substituting grDevices::pdf().", call. = FALSE);
        pdf_null_device
      }
    )
  }

  invisible(old)
}


#' Null devices
#'
#' Null devices to be used when rendering graphics in the background. See
#' [`set_null_device()`] for details.
#'
#' @param width Device width in inch
#' @param height Device height in inch
#' @export
png_null_device <- function(width, height) {
  grDevices::png(
    filename = tempfile(pattern = "cowplot_null_plot", fileext = ".png"),
    width = width, height = height,
    units = "in", res = 96
  )
  grDevices::dev.control("enable")
}

#' @rdname png_null_device
#' @export
pdf_null_device <- function(width, height) {
  grDevices::pdf(NULL, width = width, height = height)
  grDevices::dev.control("enable")
}

#' @rdname png_null_device
#' @export
cairo_null_device <- function(width, height) {
  if (requireNamespace("Cairo", quietly = TRUE)) {
    Cairo::Cairo(
      type = "raster",
      width = width, height = height,
      units = "in", dpi = 300
    )
    grDevices::dev.control("enable")
  } else {
    warning("Package `Cairo` is required to use the Cairo null device. Substituting grDevices::pdf(NULL).", call. = FALSE)
    pdf_null_device(width, height)
  }
}

#' @rdname png_null_device
#' @export
agg_null_device <- function(width, height) {
  if (requireNamespace("ragg", quietly = TRUE)) {
    ragg::agg_png(
      filename = tempfile(pattern = "cowplot_null_plot", fileext = ".png"),
      width = width, height = height,
      units = "in", res = 300
    )
    grDevices::dev.control("enable")
  } else {
    warning("Package `ragg` is required to use the agg null device. Substituting grDevices::pdf(NULL).", call. = FALSE)
    pdf_null_device(width, height)
  }
}

# the null device is stored in an environment
# default upon start up is pdf null device
null_dev_env <- new.env(parent = emptyenv())
null_dev_env$current <- pdf_null_device

