#' Get plot titles
#'
#' @param plot a ggplot or gtable
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
