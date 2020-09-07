#' Retrieve the panel or part of a panel of a plot
#'
#' `get_panel()` extracts just the main panel from a ggplot or a specified panel
#' in a faceted plot. `get_panel_component()` extracts components from the
#' panel, such as geoms.
#'
#' @param plot A ggplot or gtable from which to retrieve the panel
#' @param panel An integer indicating which panel to pull. ggplot orders panels
#'   column-wise, so this is in order from the top left down.
#' @param return_all If there is more than one panel, should all be returned
#'   as a list? Default is `FALSE`.
#' @param pattern the name of the component
#' @return A gtable object holding the panel(s) or a grob of the component
#' @examples
#' library(ggplot2)
#'
#' p <- ggplot(mpg, aes(displ, cty)) + geom_point()
#' plot_panel <- get_panel(p)
#' ggdraw(plot_panel)
#'
#' ggdraw(get_panel_component(plot_panel, "geom_point"))
#'
#' @export
get_panel <- function(plot, panel = NULL, return_all = FALSE) {
  plot <- as_gtable(plot)
  panel_locs <- grepl("panel", plot_component_names(plot))
  panels <- plot_components(plot)[panel_locs]
  if (length(panels) > 1 && is.null(panel) && !return_all)
    warning("Multiple panels found; returning the first one. Select a panel with `panel` or return all with `return_all = TRUE`.")

  if (!is.null(panel)) {
    panels <- panels[[panel]]
  } else if (!return_all) {
    panels <- panels[[1]]
  }

  invisible(panels)
}

#' @rdname get_panel
#' @export
get_panel_component <- function(panel, pattern) {
  grobs <- panel$children
  grobIndex <- which(grepl(pattern, panel$childrenOrder))

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
