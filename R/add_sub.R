#' Add annotation underneath a plot
#'
#' This function can add an arbitrary label or mathematical expression underneath
#' the plot, similar to the \code{sub} parameter in base R.
#'
#' The exact location where the
#' label is placed is controlled by the parameters \code{x}, \code{y}, \code{hjust}, and
#' \code{vjust}. By default, all these parameters are set to 0.5, which places the label
#' centered underneath the plot panel. A value of \code{x = 0} indicates the left boundary
#' of the plot panel and a value of \code{x = 1} indicates the right boundary. The parameter
#' \code{hjust} works just as elsewhere in ggplot2. Thus, \code{x = 0, hjust = 0} places
#' the label left-justified at the left boundary of the plot panel, \code{x = 0.5, hjust = 0.5}
#' places the label centered underneath the plot panel, and \code{x = 1, hjust = 1} places
#' it right-justified at the right boundary of the plot panel. \code{x}-values below 0 or
#' above 1 are allowed, and they move the label beyond the limits of the plot panel.
#'
#' The \code{y} coordinates are relative to the added vertical space that is introduced
#' underneath the x-axis label to place the annotation. A value of \code{y=0} indicates
#' the bottom-most edge of that space and a value of \code{y=1} indicates the top-most
#' edge of that space. The total height of the added space is given by the height needed
#' to draw the label plus the value of \code{vpadding}. Thus, if \code{y=0, vjust=0} then
#' the extra padding is added entirely above the label, if \code{y=1, vjust=1} then the
#' extra padding is added entirely below the label, and if \code{y=0.5, vjust=0.5} (the
#' default) then the extra padding is added equally above and below the label. As is the
#' case with \code{x}, \code{y}-values outside the range 0-1 are allowed. In particular,
#' for sufficiently large values of \code{y}, the label will eventually be located inside
#' the plot panel.
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
#' @param fontfamily The font family
#' @param fontface The font face ("plain", "bold", etc.)
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
#' ggdraw(add_sub(p1, "Annotation inside plot", vpadding=grid::unit(0, "lines"),
#'        y = 6, x = 0.03, hjust = 0))
#' @export
add_sub <- function(plot, label, x = 0.5, y = 0.5, hjust = 0.5, vjust = 0.5, vpadding = grid::unit(1, "lines"),
                    fontfamily = "", fontface = "plain", colour = "black", size = 14, angle = 0, lineheight = 0.9)
{
  text_par <- grid::gpar(col = colour,
                   fontsize = size,
                   fontfamily = fontfamily,
                   fontface = fontface,
                   lineheight = lineheight)

  # render the annotation
  ann.grob <- grid::textGrob(label, x = grid::unit(x, "npc"), y = grid::unit(y, "npc"),
                             hjust = hjust, vjust = vjust, rot = angle, gp = text_par)

  gt <- ggplot_to_gtable(plot)

  # locate xlab
  xi <- gt$layout[gt$layout$name == "xlab",]
  if (nrow(xi) == 1)
  {
    t <- xi$b+1; l <- xi$l; b <- xi$b+1; r <- xi$r
  }
  else
  {
    # if we can't locate xlab, locate title for left/right boundary
    xi <- gt$layout[gt$layout$name == "title",]
    if (nrow(xi) == 1)
    {
      t <- length(gt$heights)-1; b <- t; l <- xi$l; r <- xi$r
    }
    else
    {
      # failsave
      t <- length(gt$heights)-1; b <- t; l <- 1; r <- length(gt$widths)
      print(c(t,b,l,r))
    }
  }

  g <- gtable::gtable_add_rows(gt, grid::unit(1, "grobheight", ann.grob) + vpadding, t-1)
  g <- gtable::gtable_add_grob(g, ann.grob, t, l, b, r, clip = "off", name="sub")

  # return
  g
}

