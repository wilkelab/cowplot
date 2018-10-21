#' Get plot Axes
#'
#' These functions extract just the axes from a ggplot. `get_y_axis()` pulls
#' the y-axis, while `get_x_axis()` pulls the x-axis.
#'
#' @param plot A ggplot or gtable.
#' @param side Which side of the plot is the axis on?
#' @examples
#' library(ggplot2)
#'
#' p <- ggplot(mpg, aes(displ, cty)) +
#'   geom_point()
#'
#' ggdraw(get_y_axis(p))
#' ggdraw(get_x_axis(p + scale_x_continuous(position = "top"), side = "t"))
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
