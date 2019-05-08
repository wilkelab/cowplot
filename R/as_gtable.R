#' Convert plot or other graphics object into a gtable
#'
#' This function does its best attempt to take whatever you provide it and turn it into a gtable.
#' It is primarily meant to convert ggplot plots into gtables, but it will also take any grid
#' object (grob), a recorded R base plot, or a function that generates an R base plot.
#'
#' To convert ggplot plots, the function needs to use a null graphics device. This can be set
#' with [set_null_device()].
#'
#' @param plot The plot or other graphics object to convert into a gtable. Here, `plot` can be
#'   any object handled by [`as_grob()`].
#' @export
as_gtable <- function(plot) {
  UseMethod("as_gtable")
}

#' @export
as_gtable.gtable <- function(plot) {
  # gtables don't have to be converted
  plot
}

#' @export
as_gtable.grob <- function(plot) {
  # we can handle basic grobs of any kind by wrapping them into a gtable
  u <- grid::unit(1, "null")
  gt <- gtable::gtable_col(NULL, list(plot), u, u)
  # fix gtable clip setting
  gt$layout$clip <- "inherit"
  gt
}

#' @export
as_gtable.default <- function(plot) {
  # hope that as_grob() function can produce a grob
  grob <- as_grob(plot)
  as_gtable(grob)
}

#' @rdname as_gtable
#' @export
plot_to_gtable <- function(plot) {
  # this version is deprecated
  UseMethod("as_gtable")
}
