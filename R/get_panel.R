#' Retrieve the panel of a plot
#'
#' This function extracts just the main panel from a ggplot. It only works for plots with exactly
#' one panel (i.e., plots that are not faceted).
#'
#' @param plot A ggplot or gtable from which to retrieve the panel
#' @param panel An integer indicating which panel to pull
#' @param pattern the name of the component
#' @return A gtable object holding just the panel
#' @export
get_panel <- function(plot, panel = NULL) {
  panel_locs <- grepl("panel", plot_component_names(plot))
  panels <- plot_components(plot)[panel_locs]
  if (length(panels) > 1 & is.null(panel)) stop("For plots with facets, you must indicate which `panel`")

  if (!is.null(panel)) {
    panels <- panels[[panel]]
  } else {
    panels <- panels[[1]]
  }

  invisible(panels)
}

# get_panel <- function(plot)
# {
#   gt <- as_gtable(plot)
#   panelIndex <- which(gt$layout$name == "panel")
#   if (length(panelIndex) == 1){
#     panel <- gt$grobs[[panelIndex]]
#   }
#   else {
#     stop('Plot must contain exactly one panel')
#   }
# }

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
