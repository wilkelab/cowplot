#' cowplot.
#'
#' A simple add-on to ggplot2 that changes the default theme and provides a few additional, useful things.
#' @name cowplot
#' @docType package
#' @import ggplot2
NULL



# *************************************************
#                     Setup
# *************************************************

.onAttach <- function(libname, pkgname) {
  # switch the default theme to theme_cow
  ggplot2::theme_set(theme_cow())
}


# *************************************************
#                     Themes
# *************************************************

#' Create the default cowplot theme
#'
#' After loading the cowplot package, this theme will be the default
#' for all graphs made with ggplot2.
#'
#' @param base_size The overall font size. Default is 14.
#' @param base_family The default family.
#' @return The theme.
#' @examples
#' qplot(1:10, 1:10^2) + theme_cow(base_size = 16)
theme_cow <- function(base_size = 14, base_family = "") {
  # Starts with theme_grey and then modify some parts
  theme_grey(base_size = base_size, base_family = base_family) %+replace%
    theme(
      rect              = element_rect(fill = "transparent", colour = NA, color = NA, size = 0, linetype = 0),
      axis.text         = element_text(size = base_size),
      axis.ticks        = element_line(colour = "black"),
      axis.line         = element_line(colour = "black"),
      legend.key        = element_blank(),
      panel.background  = element_blank(),
      plot.background   = element_blank(),
      panel.border      = element_blank(),
      panel.grid.major  = element_blank(),
      panel.grid.minor  = element_blank(),
      strip.background  = element_rect(fill = "grey80", colour = "grey50", size = 0)
    )
}


#' Create a completely empty theme
#'
#' The theme created by this function shows nothing but the plot panel. Unfortunately,
#' due to ggplot2 peculiarities, a little bit of padding remains to the left and bottom of
#' the panel. This can be removed by adding labs(x = NULL, y = NULL) to the plot, see examples.
#' @param base_size The overall font size. Default is 14.
#' @return The theme.
#' @examples
#' qplot(1:10, 1:10^2) + theme_cow(base_size = 16)
theme_nothing <- function(base_size = 12, base_family = ""){
  theme_grey(base_size = base_size, base_family = base_family) %+replace%
    theme(
      rect              = element_rect(fill = "transparent", colour = NA, color = NA, size = 0, linetype = 0),
      line              = element_blank(),
      text              = element_blank(),
      title             = element_blank(),
      # to debug, uncomment next line
      #plot.background   = element_rect(colour = "blue", fill = "cyan"),
      panel.background  = element_blank(),
      axis.ticks.margin = unit(0, "lines"),
      axis.ticks.length = unit(0, "lines"),
      panel.margin      = unit(c(0, 0, 0, 0), "lines"),
      plot.margin       = unit(c(0, 0, 0, 0), "lines")
    )
}



# *************************************************
#                     Output
# *************************************************

# never, ever again worry about misrendered dingbats
ggsave <- function(...){
  ggplot2::ggsave(..., useDingbats = FALSE)
}

#' Alternative to ggsave.
#'
#' This function is just a thin wrapper around ggsave.
save_plot <- function(filename, plot, cols = 1, rows = 1,
                      base_width = 5, base_height = 3.5, dpi = 300,
                      units = "in", useDingbats = FALSE){
  ggplot2::ggsave(filename, plot, width = base_width*cols, height = base_height*rows, units, useDingbats, dpi)
}



# *************************************************
#                     Drawing code
# *************************************************


#' Draw a line.
#'
#' This is a convenience function. It's just a thin wrapper around geom_line.
#'
#' @param x vector of x coordinates
#' @param y vector of y coordinates
#' @param ... style parameters, such as 'colour', 'alpha', size', etc.
draw_line <- function(x, y, ...){
  geom_line(data = data.frame(x, y),
            aes(x = x, y = y),
            ...)
}

#' Draw text.
#'
#' This is a convenience function. It's just a thin wrapper around geom_text. It can take either an
#' individual piece of text to be drawn or a vector of separate text labels, with associated coordinates.
#'
#' By default, the x and y coordinates specify the center of the text box. Set hjust = 0, vjust = 0 to specify
#' the lower left corner, and other values of hjust and vjust for any other relative location you want to
#' specify.
#' @param text character or expression vector specifying the text to be written.
#' @param x vector of x coordinates
#' @param y vector of y coordinates
#' @param ... style parameters, such as 'colour', 'alpha', 'angle', 'size', etc.
draw_text <- function(text, x, y, ...){
  geom_text(data = data.frame(text, x, y),
            aes(label = text, x = x, y = y),
            ...)
}

#' Draw plot label
#'
#' This function adds a plot label to the upper left corner of a graph. It takes all the same parameters
#' as draw_text(), but has defaults that make it convenient to label graphs.
draw_plot_label <- function(label, x=0, y=1, hjust = -0.3, vjust = 1.3, size = 14, fontface = 'bold', ...){
  draw_text(text = label, x = x, y = y, hjust = hjust, vjust = vjust, size = size, fontface = fontface, ...)
}


#' Draw a (sub)plot.
#'
#' Place a plot somewhere onto the drawing canvas. By default, coordinates run from
#' 0 to 1, and the point (0, 0) is in the lower left corner of the canvas.
#' @param plot The plot to place
#' @param x x location of the lower left corner of the plot
#' @param y y location of the lower left corner of the plot
#' @param width width of the plot
#' @param height height of the plot
draw_plot <- function(plot, x = 0, y = 0, width = 1, height = 1){
  plot.grob <- grid::grobTree(ggplot2::ggplotGrob(plot))
  annotation_custom(plot.grob, xmin = x, xmax = x+width, ymin = y, ymax = y+height)
}

#' Set up a drawing layer on top of a ggplot
ggdraw <- function(plot = NULL){
  d <- data.frame(x=0:1, y=0:1) # dummy data
  p <- ggplot(d, aes(x=x, y=y)) + # empty plot
    scale_x_continuous(limits = c(0, 1), expand = c(0, 0)) +
    scale_y_continuous(limits = c(0, 1), expand = c(0, 0)) +
    theme_nothing() + # with empty theme
    labs(x=NULL, y=NULL) # and absolutely no axes

  if (!is.null(plot)){
    plot.grob <- grid::grobTree(ggplot2::ggplotGrob(plot))
    p <- p + annotation_custom(plot.grob)
  }
  p # return ggplot drawing layer
}

# one method that will definitely work is to create a new graph that only holds an empty plotting area
# and then place the original graph and annotations using annotation_custom()

test <- function(plot){
  d <- data.frame(x=0:1, y=0:1) # dummy data
  p <- ggplot(d, aes(x=x, y=y)) + # empty plot
    scale_x_continuous(limits = c(0, 1), expand = c(0, 0)) +
    scale_y_continuous(limits = c(0, 1), expand = c(0, 0)) +
    theme_nothing() + # with empty theme
    labs(x=NULL, y=NULL) # and absolutely no axes
  plot.grob <- grid::grobTree(ggplot2::ggplotGrob(plot))
  text.grob <- grid::grobTree(grid::textGrob("this is a test", x = 0.45,  y = 0.5, rot = 45,
                                          gp=grid::gpar(col = "red", alpha = .4, fontsize = 120)))
  p + annotation_custom(text.grob) + annotation_custom(plot.grob) + draw_line(c(1, .5), c(0, .5), colour='green', size=3)
}



# Add a watermark to a plot
# http://www.r-bloggers.com/adding-watermarks-to-plots/
watermark <- function(label="This is a Draft!"){
  my_grob = grid::grobTree(grid::textGrob(label, x = 0.5,  y = 0.5, rot = 45,
                                          gp=grid::gpar(col = "red", alpha = .4, fontsize = 150)))
  annotation_custom(my_grob)
}



