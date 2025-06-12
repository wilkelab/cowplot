#' Get plot components
#'
#' Extract plot components from a ggplot or gtable. `get_plot_component()`
#' extracts specific grobs or a list of grobs. Note that it omits `zeroGrob`s and
#' returns `NULL` if there is no non-zero grob to return. `plot_component_names()`
#' provides the names of the components in the plot. `plot_components()` returns all
#' components as a list.
#'
#' @param plot A ggplot or gtable to extract from.
#' @param pattern The name of the component.
#' @param return_all If there is more than one component, should all be returned
#'   as a list? Default is `NA`, which returns the first component with a warning.
#'   `TRUE` returns all components. `FALSE` returns the first without warning.
#'
#' @return A grob or list of grobs (`get_plot_component()`, `plot_components()`)
#'   or a character vector (`plot_component_names()`)
#' @examples
#' library(ggplot2)
#'
#' p <- ggplot(mpg, aes(displ, cty)) + geom_point()
#' ggdraw(get_plot_component(p, "ylab-l"))
#'
#' @export
get_plot_component <- function(plot, pattern, return_all = NA) {
  plot <- as_gtable(plot)
  grob_names <- plot_component_names(plot)
  grobs <- plot_components(plot)

  # remove zeroGrob's
  not_empty <- !vapply(
    grobs,
    inherits, what = "zeroGrob",
    FUN.VALUE = logical(1)
  )
  grobs <- grobs[not_empty]
  grob_names <- grob_names[not_empty]

  grobIndex <- which(grepl(pattern, grob_names))

  if (length(grobIndex) != 0) {
    if (length(grobIndex) > 1 && !isTRUE(return_all)) {
      # If there's more than one grob, return just the first one
      if (is.na(return_all)) {
        warning("Multiple components found; returning the first one. To return all, use `return_all = TRUE`.")
      }
      grobIndex <- grobIndex[1]
      matched_grobs <- grobs[[grobIndex]]
    } else if (length(grobIndex) > 1 && isTRUE(return_all)) {
      # If there's more than one grob, return all as a list
      matched_grobs <- grobs[grobIndex]
    } else {
      matched_grobs <- grobs[[grobIndex]]
    }
  }
  # if there's no grob, return NULL
  else {
    matched_grobs <- NULL
  }

  invisible(matched_grobs)
}

#' @rdname get_plot_component
#' @export
plot_component_names <- function(plot) {
  if (gtable::is.gtable(plot)) {
    plot$layout$name
  } else {
    as_gtable(plot)$layout$name
  }
}

#' @rdname get_plot_component
#' @export
plot_components <- function(plot) {
  if (gtable::is.gtable(plot)) {
    plot$grobs
  } else {
    as_gtable(plot)$grobs
  }
}


