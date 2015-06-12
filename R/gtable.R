#' Remove named elements from gtable
#'
#' @param table The table from which grobs should be removed
#' @param names A character vector of the grob names (as listed in \code{table$layout})
#'   that should be removed
#' @param ... Other parameters passed through to \code{gtable_filter}.
#' @export
gtable_remove_grobs <- function(table, names, ...)
{
  kept_names <- table$layout$name[!(table$layout$name %in% names)]
  gtable::gtable_filter(table, paste(kept_names, sep="", collapse="|"), ...)
}

#' Set the height of given rows to 0.
#'
#' @param table The gtable on which to operate
#' @param rows Numerical vector indicating the rows whose heights should be set to zero.
#' @export
gtable_squash_rows <- function(table, rows)
{
  lapply(rows, function(x){ table$heights[[x]] <<- grid::unit(0, "in")})
  table
}

#' Set the width of given colums to 0.
#'
#' @param table The gtable on which to operate
#' @param cols Numerical vector indicating the columns whose width should be set to zero.
#' @export
gtable_squash_cols <- function(table, cols)
{
  lapply(cols, function(x){ table$widths[[x]] <<- grid::unit(0, "in")})
  table
}
