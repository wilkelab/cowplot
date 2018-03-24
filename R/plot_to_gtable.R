#' Convert plot or other graphics object into a gtable
#'
#' This function does it's best attempt to take whatever you provide it and turn it into a gtable.
#' It is primarily meant to convert ggplot plots into gtables, but it will also take any grid
#' object (grob), a recorded R base plot, or a function that generates an R base plot.
#'
#' To convert ggplot plots, the function needs to use a null graphics device. This can be set
#' with [set_null_device()].
#'
#' @param plot The plot or other graphics object to convert into a gtable. Here, `plot` can be an
#'   object of the following classes: \code{\link[ggplot2]{ggplot}}, \code{\link[grDevices:recordPlot]{recordedplot}},
#'   \code{\link[grid]{grob}}, or \code{\link[gtable]{gtable}}. Alternatively, `plot` can be
#'   a function creating a plot when called (see examples for [plot_grid()]).
#' @export
plot_to_gtable <- function(plot){
  if (methods::is(plot, "function") || methods::is(plot, "recordedplot")){
    if (!requireNamespace("gridGraphics", quietly = TRUE)){
      warning("Package `gridGraphics` is required to handle base-R plots. Substituting empty plot.", call. = FALSE)
      u <- grid::unit(1, "null")
      gt <- gtable::gtable_col(NULL, list(grid::nullGrob()), u, u)
      # fix gtable clip setting
      gt$layout$clip <- "inherit"
      gt
    }
    else {
      # we convert the captured plot or output plot into a grob
      grob <- plot_to_grob(plot) # capture plot

      # now wrap into a gtable
      u <- grid::unit(1, "null")
      gt <- gtable::gtable_col(NULL, list(grob), u, u)
      # fix gtable clip setting
      gt$layout$clip <- "inherit"
      gt
    }
  }
  else if (methods::is(plot, "ggplot")){
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

    cur_dev <- grDevices::dev.cur()    # store current device
    null_dev_env$current(width = 6, height = 6)             # open null device
    null_dev <- grDevices::dev.cur()   # store null device
    plot <- ggplot2::ggplotGrob(plot)  # convert plot to grob
    grDevices::dev.off(null_dev)       # close null device
    grDevices::dev.set(cur_dev)        # restore previously active device

    plot
  }
  else if (methods::is(plot, "gtable")){
    # gtables don't have to be converted
    plot
  }
  else if (methods::is(plot, "grob")) {
    # we can also handle basic grobs of any kind
    u <- grid::unit(1, "null")
    gt <- gtable::gtable_col(NULL, list(plot), u, u)
    # fix gtable clip setting
    gt$layout$clip <- "inherit"
    gt
  }
  else{
    stop(
      'Argument needs to be of class "ggplot", "gtable", "grob", ',
      '"recordedplot", or a function that plots to an R graphics',
      'device when called, but is a ', class(plot))
  }
}

# function that reliably captures a base plot and turns it into a grob
plot_to_grob <- function(plot) {
  device <- null_dev_env$current
  grid::recordGrob(
    tryCatch(
      gridGraphics::grid.echo(plot, newpage=FALSE, device = device),
      error = function(e) {}
    ),
    list(plot = plot, device = device))
}

