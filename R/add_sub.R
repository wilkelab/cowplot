#' Adds annotation underneath a plot, similar to the `sub` parameter in base R.
#'
#' @param plot A ggplot object or gtable object derived from a ggplot object.
#' @param label The label with which the plot should be annotated. Can be a plotmath expression.
#' @param x The x position of the label
#' @param y The y position of the label
#' @param hjust Horizontal justification
#' @param vjust Vertical justification
#' @param vpadding Vertical padding. The total vertical space added to the label, given in grid
#'    units. By default, this is added equally above and below the label. However, by changing the
#'    y and vjust parameters, this can be changed.
#' @param font_family The font family
#' @param font_face The font face ("plain", "bold", etc.)
#' @param colour Text color
#' @param size Point size of text
#' @param angle Angle at which text is drawn
#' @param lineheight Line height of text
#' @return A gtable object holding the modified plot.
#' @examples
#' p1 <- ggplot(mtcars, aes(mpg, disp)) + geom_line(colour = "blue") + background_grid(minor='none')
#' ggdraw(add_sub(p1, "This is an annotation.\nAnnotations can span multiple lines."))
#'
#' # You can also do this repeatedly. Just be aware that new annotations are added above previous ones:
#' p2 <- add_sub(p1, expression(paste(a^2+b^2, " = ", c^2)))
#' p3 <- add_sub(p2, "This formula has no relevance here:", y  = 0, vjust = 0)
#' ggdraw(p3)
#'
#' #This code also works with faceted plots:
#' plot.iris <- ggplot(iris, aes(Sepal.Length, Sepal.Width)) +
#'   geom_point() + facet_grid(. ~ Species) + stat_smooth(method = "lm") +
#'   background_grid(major = 'y', minor = "none") + # add thin horizontal lines
#'   panel_border() # and a border around each panel
#' p2 <- add_sub(plot.iris, "Annotation underneath a faceted plot, left justified.", x = 0, hjust = 0)
#' ggdraw(p2)
#'
#' # Finally, it is possible to move the annotation inside of the plot if desired.
#' ggdraw(add_sub(p1, "Annotation inside plot", vpadding=grid::unit(0, "lines"), y = 6, x = 0.02, hjust = 0))
#' @export
add_sub <- function(plot, label, x = 0.5, y = 0.5, hjust = 0.5, vjust = 0.5, vpadding = grid::unit(1, "lines"),
                    font_family = "", font_face = "plain", colour = "black", size = 14, angle = 0, lineheight = 0.9)
{
  text_par <- grid::gpar(col = colour,
                   fontsize = size,
                   fontfamily = font_family,
                   fontface = font_face,
                   lineheight = lineheight)

  # render the annotation
  ann.grob <- grid::textGrob(label, x = grid::unit(x, "npc"), y = grid::unit(y, "npc"),
                             hjust = hjust, vjust = vjust, rot = angle, gp = text_par)

  gt <- ggplot_to_gtable(plot)

  # locate xlab
  xi <- gt$layout[gt$layout$name == "xlab",]
  if (nrow(xi) != 1)
  {
    stop("Can only insert sub on plots with exactly one xlab element.")
  }

  g <- gtable::gtable_add_rows(gt, grid::unit(1, "grobheight", ann.grob) + vpadding, xi$b)
  g <- gtable::gtable_add_grob(g, ann.grob, xi$b+1, xi$l, xi$b+1, xi$r+1, clip = "off", name="sub")

  # return
  g
}

