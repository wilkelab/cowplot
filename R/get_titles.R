#' Get plot titles
#'
#' These functions extract just the titles from a ggplot. `get_title()` pulls
#' the title, while `get_subtitle()` pulls the subtitle.
#'
#' @param plot A ggplot or gtable.
#' @examples
#' library(ggplot2)
#'
#' p <- ggplot(mpg, aes(displ, cty)) +
#'   geom_point() +
#'   labs(
#'     title = "Plot title",
#'     subtitle = "Plot subtitle"
#'   )
#' ggdraw(get_title(p))
#' ggdraw(get_subtitle(p))
#'
#' @export
get_title <- function(plot) {
  get_plot_component(plot, "^title")
}

#' @rdname get_title
#' @export
get_subtitle <- function(plot) {
  get_plot_component(plot, "subtitle")
}
