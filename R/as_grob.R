#' Convert a base plot or a ggplot2 plot into a grob
#'
#' This function does its best attempt to take whatever you provide it and turn it into a grob.
#' It is primarily meant to convert ggplot plots into grobs, but it will also take any grid
#' object (grob), a recorded base R plot, a formula specifying a base R plot, a function that
#' generates a base R plot, or a trellis object.
#'
#' @param plot The plot to convert
#' @param device A function that creates an appropriate null device. See [`set_null_device()`]
#'   for details. If set to `NULL`, will use the cowplot-wide default.
#'
#' @examples
#' library(grid)
#' x <- 1:10
#' y <- (1:10)^2
#'
#' p <- ~plot(x, y)
#' grid.newpage()
#' grid.draw(as_grob(p))
#' @export
as_grob <- function(plot, device = NULL) {
  UseMethod("as_grob")
}

#' @export
as_grob.recordedplot <- function(plot, device = NULL) {
  if (!requireNamespace("gridGraphics", quietly = TRUE)){
    warning("Package `gridGraphics` is required to handle base-R plots. Substituting empty plot.", call. = FALSE)
    grid::nullGrob()
  }
  else {
    if (is.null(device)) {
      device <- null_dev_env$current
    }
    gridGraphics::echoGrob(plot, device = device)
  }
}

#' @export
as_grob.trellis <- function(plot, device = NULL) {
  if (is.null(device)) {
    device <- null_dev_env$current
  }
  grid::recordGrob(
    tryCatch(
      print(plot, newpage=FALSE),
      error = function(e) {
        grid::grid.text(e$message)
      }
    ), list(plot = plot, device = device))
}

#' @export
as_grob.function <- function(plot, device = NULL) {
  # functions are handled just like recorded plots:
  as_grob.recordedplot(plot, device)
}

#' @export
as_grob.formula <- function(plot, device = NULL) {
  expr <- plot[[2]]
  env <- parent.frame()
  f <- function() {eval(expr, envir = env)}

  # functions are handled just like recorded plots:
  as_grob.recordedplot(f, device)
}

#' @export
as_grob.grob <- function(plot, device = NULL) {
  # grobs don't have to be converted
  plot
}

#' @export
as_grob.gList <- function(plot, device = NULL) {
  # gLists need to be wrapped in a grob tree
  grid::grobTree(plot)
}

#' @export
as_grob.ggplot <- function(plot, device = NULL) {
  # Convert ggplot plot to grob
  #
  # To be safe this works as expected, we have to do some graphics-device gymnastics.
  # We need to save and restore the current graphics device, and we also need to open
  # a null device. If we don't do this, things may go wrong, in particular in R Studio
  # or shiny, such as plots popping up in the wrong location or spurious empty plots
  # appearing in knitr. Also, depending on which null device we choose, non-standard
  # fonts may or may not work. Different null devices work best in different environments,
  # that's why the null device is configurable. (`pdf(NULL)` is the most robust but
  # can't handle all fonts, `png()` works well on OS X but creates spurious output files,
  # `Cairo(type = "raster")` works well on Windows but font-handling is broken on OS X.)

  if (is.null(device)) {
    device <- null_dev_env$current
  }

  cur_dev <- grDevices::dev.cur()   # store current device
  device(width = 6, height = 6)     # open null device
  null_dev <- grDevices::dev.cur()  # store null device

  # make sure we always clean up properly, even if something causes an error
  on.exit({
    grDevices::dev.off(null_dev)
    if (cur_dev > 1) grDevices::dev.set(cur_dev) # only set cur device if not null device
  })

  ggplot2::ggplotGrob(plot)  # convert plot to grob
}

# comment out until patchwork is officially released and on CRAN
#' @export
as_grob.patchwork <- function(plot, device = NULL) {
 if (!requireNamespace("patchwork", quietly = TRUE)){
   warning("Package `patchwork` is required to handle object of class patchwork. Substituting empty plot.", call. = FALSE)
   return(grid::nullGrob())
 }

 # Convert patchwork ggassemble to grob
 #
 # To be safe this works as expected, we have to do some graphics-device gymnastics.
 # We need to save and restore the current graphics device, and we also need to open
 # a null device. If we don't do this, things may go wrong, in particular in R Studio
 # or shiny, such as plots popping up in the wrong location or spurious empty plots
 # appearing in knitr. Also, depending on which null device we choose, non-standard
 # fonts may or may not work. Different null devices work best in different environments,
 # that's why the null device is configurable. (`pdf(NULL)` is the most robust but
 # can't handle all fonts, `png()` works well on OS X but creates spurious output files,
 # `Cairo(type = "raster")` works well on Windows but font-handling is broken on OS X.)

 if (is.null(device)) {
   device <- null_dev_env$current
 }

 cur_dev <- grDevices::dev.cur()   # store current device
 device(width = 6, height = 6)     # open null device
 null_dev <- grDevices::dev.cur()  # store null device

 # make sure we always clean up properly, even if something causes an error
 on.exit({
   grDevices::dev.off(null_dev)
   if (cur_dev > 1) grDevices::dev.set(cur_dev) # only set cur device if not null device
 })

 patchwork::patchworkGrob(plot)    # convert plot to grob
}


#' @export
as_grob.default <- function(plot, device = NULL) {
  warning("Cannot convert object of class ", class(plot), " into a grob.")
  grid::nullGrob()
}

