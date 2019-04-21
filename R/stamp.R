#' Stamp plots with a label, such as good, bad, or ugly.
#'
#' @param p The plot to stamp
#' @param color,colour The color of the stamp
#' @param alpha Transparency level of the stamp
#' @param label The text label used for the stamp
#' @param hjust,vjust Horizontal and vertical adjustment of the label
#' @param size Font size
#' @param family Font family
#' @param fontface Font face
#' @param clip Should figure be clipped (default is "on")
#' @param ... Arguments handed off to `stamp()`.
#' @examples
#' library(ggplot2)
#'
#' p <- ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width)) +
#'   geom_point(aes(color = factor(Petal.Width)))
#'
#' stamp_bad(p + guides(color = "none"))
#' stamp_ugly(p)
#' @export
stamp <- function(p, label, color = "black", alpha = 1, vjust = 1.1, hjust = 1,
                  size = 14, family = "", fontface = "bold", clip = "on", colour)
{
  if (!missing(colour)) {
    color <- colour
  }

  ggdraw(p, clip = clip) +
    draw_text(
      paste0(label, "  "),
      x = 1, y = 1, vjust = vjust, hjust = hjust, size = size, angle = 0,
      color = color, alpha = alpha, family = family, fontface = fontface
    ) +
    draw_line(c(.9999999999, .9999999999), c(0, 1), size = 0.2*size, color = color, alpha = alpha)
}

#' @rdname stamp
#' @export
stamp_good <- function(p, ...) stamp(p, "good", "olivedrab4", ...)

#' @rdname stamp
#' @export
stamp_bad <- function(p, ...) stamp(p, "bad", "#d02138", ...)

#' @rdname stamp
#' @export
stamp_wrong <- function(p, ...) stamp(p, "wrong", "#8E202C", ...)

#' @rdname stamp
#' @export
stamp_ugly <- function(p, ...) stamp(p, "ugly", "#DC9515", ...)
