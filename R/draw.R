# *************************************************
#                     Drawing code
# *************************************************


# ****** Internal functions used by drawing code ******
ggplot_to_gtable <- function(plot)
{
  if (methods::is(plot, "ggplot")){
    ggplot2::ggplotGrob(plot)
  }
  else if (methods::is(plot, "gtable")){
    plot
  }
  else{
    stop('Argument needs to be of class "ggplot" or "gtable"' )
  }
}


#' Draw a line.
#'
#' This is a convenience function. It's just a thin wrapper around \code{geom_line}.
#'
#' @param x Vector of x coordinates.
#' @param y Vector of y coordinates.
#' @param ... Style parameters, such as \code{colour}, \code{alpha}, \code{size}, etc.
#' @export
draw_line <- function(x, y, ...){
  geom_path(data = data.frame(x, y),
            aes(x = x, y = y),
            ...)
}

#' Draw text.
#'
#' This is a convenience function to plot multiple pieces of text at the same time. It cannot
#' handle mathematical expressions, though. For those, use \code{draw_label}.
#'
#' Note that font sizes get scaled by a factor of 2.85, so sizes given here agree with font sizes used in
#' the theme. This is different from \code{geom_text} in ggplot2.
#'
#' By default, the x and y coordinates specify the center of the text box. Set \code{hjust = 0, vjust = 0} to specify
#' the lower left corner, and other values of \code{hjust} and \code{vjust} for any other relative location you want to
#' specify.
#' @param text Character or expression vector specifying the text to be written.
#' @param x Vector of x coordinates.
#' @param y Vector of y coordinates.
#' @param size Font size of the text to be drawn.
#' @param ... Style parameters, such as \code{colour}, \code{alpha}, \code{angle}, \code{size}, etc.
#' @export
draw_text <- function(text, x = 0.5, y = 0.5, size = 14, ...){
  geom_text(data = data.frame(text, x, y),
            aes(label = text, x = x, y = y),
            size = size / .pt, # scale font size to match size in theme definition
            ...)
}


#' Draw a text label or mathematical expression.
#'
#' This function can draw either a character string or mathematical expression at the given
#' coordinates. It works both on top of \code{ggdraw} and directly with \code{ggplot}, depending
#' on which coordinate system is desired (see examples).
#'
#' By default, the x and y coordinates specify the center of the text box. Set \code{hjust = 0, vjust = 0} to specify
#' the lower left corner, and other values of \code{hjust} and \code{vjust} for any other relative location you want to
#' specify.
#' @param label String or plotmath expression to be drawn.
#' @param x The x location of the label.
#' @param y The y location of the label.
#' @param hjust Horizontal justification
#' @param vjust Vertical justification
#' @param fontfamily The font family
#' @param fontface The font face ("plain", "bold", etc.)
#' @param colour Text color
#' @param size Point size of text
#' @param angle Angle at which text is drawn
#' @param lineheight Line height of text
#' @param alpha The alpha value of the text
#' @examples
#' p <- ggplot(mtcars, aes(mpg, disp)) + geom_line(colour = "blue") + background_grid(minor='none')
#' c <- cor.test(mtcars$mpg, mtcars$disp, method='sp')
#' label <- substitute(paste("Spearman ", rho, " = ", estimate, ", P = ", pvalue),
#'                     list(estimate = signif(c$estimate, 2), pvalue = signif(c$p.value, 2)))
#' # adding label via ggdraw, in the ggdraw coordinates
#' ggdraw(p) + draw_label(label, .7, .9)
#' # adding label directly to plot, in the data coordinates
#' p + draw_label(label, 20, 400, hjust = 0, vjust = 0)
#' @export
draw_label <- function(label, x = 0.5, y = 0.5, hjust = 0.5, vjust = 0.5,
                    fontfamily = "", fontface = "plain", colour = "black", size = 14,
                    angle = 0, lineheight = 0.9, alpha = 1)
{
  text_par <- grid::gpar(col = colour,
                         fontsize = size,
                         fontfamily = fontfamily,
                         fontface = fontface,
                         lineheight = lineheight,
                         alpha = alpha)

  # render the label
  text.grob <- grid::textGrob(label, x = grid::unit(0.5, "npc"), y = grid::unit(0.5, "npc"),
                             hjust = hjust, vjust = vjust, rot = angle, gp = text_par)
  annotation_custom(text.grob, xmin = x, xmax = x, ymin = y, ymax = y)
}


#' Add a label to a plot
#'
#' This function adds a plot label to the upper left corner of a graph (or an arbitrarily specified position). It takes all the same parameters
#' as \code{draw_text}, but has defaults that make it convenient to label graphs with letters A, B, C, etc. Just like \code{draw_text()},
#' it can handle vectors of labels with associated coordinates.
#' @param label String (or vector of strings) to be drawn as the label.
#' @param x The x position (or vector thereof) of the label(s).
#' @param y The y position (or vector thereof) of the label(s).
#' @param hjust Horizontal adjustment.
#' @param vjust Vertical adjustment.
#' @param size Font size of the label to be drawn.
#' @param fontface Font face of the label to be drawn.
#' @param ... Other arguments to be handed to \code{draw_text}.
#' @export
draw_plot_label <- function(label, x=0, y=1, hjust = -0.5, vjust = 1.5, size = 16, fontface = 'bold', ...){
  draw_text(text = label, x = x, y = y, hjust = hjust, vjust = vjust, size = size, fontface = fontface, ...)
}


#' Add a label to a figure
#'
#' This function is similar to \code{draw_plot_label}, just with slightly different arguments and defaults. The main purpose of this
#' function is to add labels specifying extra information about the figure, such as "Figure 1", which is sometimes useful.
#' @param label Label to be drawn
#' @param position Position of the label, can be one of "top.left", "top", "top.right", "bottom.left", "bottom", "bottom.right". Default is "top.left"
#' @param size (optional) Size of the label to be drawn. Default is the text size of the current theme
#' @param fontface (optional) Font face of the label to be drawn. Default is the font face of the current theme
#' @param ... other arguments passed to \code{draw_plot_label}
#'
#' @examples
#'
#' p1 <- qplot(1:10, 1:10)
#' p2 <- qplot(1:10, (1:10)^2)
#' p3 <- qplot(1:10, (1:10)^3)
#' p4 <- qplot(1:10, (1:10)^4)
#'
#' # Create a simple grid
#' p <- plot_grid(p1, p2, p3, p4, align = 'hv')
#'
#' # Default font size and position
#' p + draw_figure_label(label = "Figure 1")
#'
#' # Different position and font size
#' p + draw_figure_label(label = "Figure 1", position = "bottom.right", size = 10)
#'
#' # Using bold font face
#' p + draw_figure_label(label = "Figure 1", fontface = "bold")
#'
#' # Making the label red and slanted
#' p + draw_figure_label(label = "Figure 1", angle = -45, colour = "red")
#'
#' # Labeling an individual plot
#' ggdraw(p2) + draw_figure_label(label = "Figure 1", position = "bottom.right", size = 10)
#'
#' @author Ulrik Stervbo (ulrik.stervbo [AT] gmail.com)
#' @export
draw_figure_label <- function(label, position = c("top.left", "top", "top.right", "bottom.left", "bottom", "bottom.right"), size, fontface, ...){
  # Get the position
  position <- match.arg(position)

  # Set default font size and face from the theme
  if(missing(size)){
    size <- theme_get()$text$size
  }
  if(missing(fontface)){
    fontface <- theme_get()$text$face
  }

  # Call draw_plot_label() with appropriate label positions
  switch(position,
         top.left     = draw_plot_label(label, x = 0,   y = 1, hjust = -0.1, vjust = 1.1,  size = size, fontface = fontface, ...),
         top          = draw_plot_label(label, x = 0.5, y = 1, hjust = 0,    vjust = 1.1,  size = size, fontface = fontface, ...),
         top.right    = draw_plot_label(label, x = 1,   y = 1, hjust = 1.1,  vjust = 1.1,  size = size, fontface = fontface, ...),
         bottom.left  = draw_plot_label(label, x = 0,   y = 0, hjust = -0.1, vjust = -0.1, size = size, fontface = fontface, ...),
         bottom       = draw_plot_label(label, x = 0.5, y = 0, hjust = 0,    vjust = -0.1, size = size, fontface = fontface, ...),
         bottom.right = draw_plot_label(label, x = 1,   y = 0, hjust = 1.1,  vjust = -0.1, size = size, fontface = fontface, ...)
  )
}

#' Draw a (sub)plot.
#'
#' Places a plot somewhere onto the drawing canvas. By default, coordinates run from
#' 0 to 1, and the point (0, 0) is in the lower left corner of the canvas.
#' @param plot The plot to place. Can be either a ggplot2 plot or an arbitrary gtable.
#' @param x The x location of the lower left corner of the plot.
#' @param y The y location of the lower left corner of the plot.
#' @param width Width of the plot.
#' @param height Height of the plot.
#' @export
draw_plot <- function(plot, x = 0, y = 0, width = 1, height = 1){
  g <- ggplot_to_gtable(plot) # convert to gtable if necessary
  plot.grob <- grid::grobTree(g)
  annotation_custom(plot.grob, xmin = x, xmax = x+width, ymin = y, ymax = y+height)
}

#' Draw a grob.
#'
#' Places an arbitrary grob somewhere onto the drawing canvas. By default, coordinates run from
#' 0 to 1, and the point (0, 0) is in the lower left corner of the canvas.
#' @param grob The grob to place.
#' @param x The x location of the lower left corner of the grob.
#' @param y The y location of the lower left corner of the grob.
#' @param width Width of the grob.
#' @param height Height of the grob.
#' @export
draw_grob <- function(grob, x = 0, y = 0, width = 1, height = 1){
  annotation_custom(grid::grobTree(grob), xmin = x, xmax = x+width, ymin = y, ymax = y+height)
}



#' Set up a drawing layer on top of a ggplot
#' @param plot The plot to use as a starting point. Can be either a ggplot2 plot or an arbitrary gtable.
#' @export
ggdraw <- function(plot = NULL){
  d <- data.frame(x=0:1, y=0:1) # dummy data
  p <- ggplot(d, aes_string(x="x", y="y")) + # empty plot
    scale_x_continuous(limits = c(0, 1), expand = c(0, 0)) +
    scale_y_continuous(limits = c(0, 1), expand = c(0, 0)) +
    theme_nothing() + # with empty theme
    labs(x=NULL, y=NULL) # and absolutely no axes

  if (!is.null(plot)){
    g <- ggplot_to_gtable(plot) # convert to gtable if necessary
    plot.grob <- grid::grobTree(g)
    p <- p + annotation_custom(plot.grob)
  }
  p # return ggplot drawing layer
}

