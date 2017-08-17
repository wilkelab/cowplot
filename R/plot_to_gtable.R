#' Convert plot or other graphics object into a gtable
#'
#' This function does it's best attempt to take whatever you provide it and turn it into a gtable.
#' It is primarily meant to convert ggplot plots into gtables, but it will also take any grid
#' object (grob), a recorded R base plot, or a function that generates an R base plot.
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
      tree <- grid::grid.grabExpr(gridGraphics::grid.echo(plot))
      u <- grid::unit(1, "null")
      gt <- gtable::gtable_col(NULL, list(tree), u, u)
      # fix gtable clip setting
      gt$layout$clip <- "inherit"
      gt
    }
  }
  else if (methods::is(plot, "ggplot")){
    # ggplotGrob must open a device and when a multiple page capable device (e.g. PDF) is open this will save a blank page
    # in order to avoid saving this blank page to the final target device a NULL device is opened and closed here to *absorb* the blank plot

    catchBlank <- identical(names(dev.cur()), 'pdf')  # is the current device `pdf()`
    if (catchBlank)
      grDevices::pdf(NULL)

    plot <- ggplot2::ggplotGrob(plot)

    if (catchBlank)
      grDevices::dev.off()

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

