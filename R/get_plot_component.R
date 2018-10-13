#' Get plot components
#'
#' @param plot a ggplot or gtable
#' @param pattern the name of the component
#'
#' @return a grob
#' @export
get_plot_component <- function(plot, pattern) {

  grob_names <- plot_component_names(plot)
  grobs <- plot_components(plot)

  grobIndex <- which(grepl(pattern, grob_names))

  if (length(grobIndex) != 0) {
    if (length(grobIndex) > 1) {
        warning("multiple components found; returning the first one")
        grobIndex <- grobIndex[1]
    }

    matched_grobs <- grobs[[grobIndex]]
  }
  else {
    matched_grobs <- NULL
  }

  invisible(matched_grobs)
}

#' @rdname get_plot_component
#' @export
plot_component_names <- function(plot) {
  as_gtable(plot)$layout$name
}

#' @rdname get_plot_component
#' @export
plot_components <- function(plot) {
  as_gtable(plot)$grobs
}


