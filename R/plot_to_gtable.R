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
      # we convert the captured plot or output plot into a grob
      # to be safe, we have to save and restore the current graphics device
      cur_dev <- grDevices::dev.cur()
      tree <- grid::grid.grabExpr(gridGraphics::grid.echo(plot))
      grDevices::dev.set(cur_dev)

      u <- grid::unit(1, "null")
      gt <- gtable::gtable_col(NULL, list(tree), u, u)
      # fix gtable clip setting
      gt$layout$clip <- "inherit"
      gt
    }
  }
  else if (methods::is(plot, "ggplot")){
    ## ggplotGrob must open a device and when a multiple page capable device (e.g. PDF) is open it will
    ## save a blank page. To avoid this blank page, we open a NULL pdf device that will *absorb* the
    ## blank plot. However, as part of this procedure, the wrong device can end up being the current one,
    ## so to be absolutely sure, we also save the previous device and then restore it.

    # save currently active device
    cur_dev <- grDevices::dev.cur()
    # open NULL pdf device
    grDevices::pdf(NULL)
    # convert plot to grob
    plot <- ggplot2::ggplotGrob(plot)
    # close pdf device
    grDevices::dev.off()
    # restore previously active device
    grDevices::dev.set(cur_dev)

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

