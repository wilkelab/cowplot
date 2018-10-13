#' Get plot axes
#'
#' @param plot a ggplot or gtable
#' @param side which side of the plot?
#'
#' @export
get_y_axis <- function(plot, side = c("l", "r")) {
  side <- match.arg(side)
  get_plot_component(plot, paste0("axis-", side))
}

#' @rdname get_y_axis
#' @export
get_x_axis <- function(plot, side = c("b", "t")) {
  side <- match.arg(side)
  get_plot_component(plot, paste0("axis-", side))
}
