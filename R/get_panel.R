#' Retrieve the panel of a plot
#'
#' This function extracts just the main panel from a ggplot. It only works for plots with exactly
#' one panel (i.e., plots that are not faceted).
#'
#' @param plot A ggplot or gtable from which to retrieve the panel
#' @return A gtable object holding just the panel
#' @export
get_panel <- function(plot)
{
  gt <- plot_to_gtable(plot)
  panelIndex <- which(gt$layout$name == "panel")
  if (length(panelIndex) == 1){
    panel <- gt$grobs[[panelIndex]]
  }
  else {
    stop('Plot must contain exactly one panel')
  }
}
