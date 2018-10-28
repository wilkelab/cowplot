#' Get plot axes
#'
#' These functions extract just the axes from a ggplot. `get_y_axis()` pulls
#' the y-axis, while `get_x_axis()` pulls the x-axis.
#'
#' @param plot A ggplot or gtable.
#' @param position Which side of the plot is the axis on? For the x-axis, this
#'   can be "top" or "bottom", and for the y-axis, it can be "left" or "right".
#' @examples
#' library(ggplot2)
#'
#' p <- ggplot(mpg, aes(displ, cty)) +
#'   geom_point()
#'
#' ggdraw(get_y_axis(p))
#' p <- p + scale_x_continuous(position = "top")
#' ggdraw(get_x_axis(p, position = "top"))
#'
#' @export
get_y_axis <- function(plot, position = c("left", "right")) {
  position <- switch(match.arg(position), "left" = "l", "right" = "r")
  get_plot_component(plot, paste0("axis-", position))
}

#' @rdname get_y_axis
#' @export
get_x_axis <- function(plot, position = c("bottom", "top")) {
  position <- switch(match.arg(position), "bottom" = "b", "top" = "t")
  get_plot_component(plot, paste0("axis-", position))
}
