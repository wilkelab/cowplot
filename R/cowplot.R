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
  # switch the default theme to theme_cowplot
  ggplot2::theme_set(theme_cowplot())
}

.pt <- 1 / 0.352777778 # from ggplot2, file aaa-constants.r

# *************************************************
#                     Themes
# *************************************************

#' Create the default cowplot theme
#'
#' After loading the cowplot package, this theme will be the default
#' for all graphs made with ggplot2.
#'
#' @param font_size The overall font size. Default is 13.
#' @param font_family The default font family.
#' @return The theme.
#' @examples
#' qplot(1:10, 1:10^2) + theme_cow(font_size = 15)
theme_cowplot <- function(font_size = 13, font_family = "", line_size = .5) {
  # Start with default theme_grey and then modify some parts
  theme_grey(base_size = font_size, base_family = font_family) %+replace%
    theme(
      rect              = element_rect(fill = "transparent", colour = NA, color = NA, size = 0, linetype = 0),
      text              = element_text(family = font_family, face = "plain", colour = "black",
                                       size = font_size, hjust = 0.5, vjust = 0.5, angle = 0, lineheight = .9),
      axis.text         = element_text(colour = "black", size = font_size),
      axis.title.x      = element_text(vjust = 0),
      axis.title        = element_text(face = "bold"),
      axis.ticks        = element_line(colour = "black", size = line_size),
      axis.line         = element_line(colour = "black", size = line_size),
      legend.key        = element_blank(),
      legend.margin     = grid::unit(0.1, "cm"),
      legend.key.size   = grid::unit(1, "lines"),
  #    legend.position   = c(-0.03, 1.05),
  #    legend.justification = c("left", "top"),
      panel.background  = element_blank(),
      panel.border      = element_blank(),
      panel.grid.major  = element_blank(),
      panel.grid.minor  = element_blank(),
      plot.background   = element_blank(),
      plot.title        = element_text(face = "bold", size = font_size),
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
      axis.ticks.margin = grid::unit(0, "lines"),
      axis.ticks.length = grid::unit(0, "lines"),
      legend.position   = "none",
      panel.margin      = grid::unit(c(0, 0, 0, 0), "lines"),
      plot.margin       = grid::unit(c(0, 0, 0, 0), "lines")
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
                      base_width = 5, base_height = 4, dpi = 300,
                      useDingbats = FALSE){
  ggplot2::ggsave(filename = filename, plot = plot, width = base_width*cols, height = base_height*rows,
                  useDingbats = useDingbats)
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
  geom_path(data = data.frame(x, y),
            aes(x = x, y = y),
            ...)
}

#' Draw text.
#'
#' This is a convenience function. It's just a thin wrapper around geom_text. It can take either an
#' individual piece of text to be drawn or a vector of separate text labels, with associated coordinates.
#'
#' Note that font sizes get scaled by a factor of 2.85, so sizes given here agree with font sizes used in
#' the theme. This is different from geom_text in ggplot2.
#'
#' By default, the x and y coordinates specify the center of the text box. Set hjust = 0, vjust = 0 to specify
#' the lower left corner, and other values of hjust and vjust for any other relative location you want to
#' specify.
#' @param text character or expression vector specifying the text to be written.
#' @param x vector of x coordinates
#' @param y vector of y coordinates
#' @param ... style parameters, such as 'colour', 'alpha', 'angle', 'size', etc.
draw_text <- function(text, x = 0.5, y = 0.5, size = 13, ...){
  geom_text(data = data.frame(text, x, y),
            aes(label = text, x = x, y = y),
            size = size / .pt, # scale font size to match size in theme definition
            ...)
}

#' Draw plot label
#'
#' This function adds a plot label to the upper left corner of a graph. It takes all the same parameters
#' as draw_text(), but has defaults that make it convenient to label graphs.
draw_plot_label <- function(label, x=0, y=1, hjust = -0.5, vjust = 1.5, size = 16, fontface = 'bold', ...){
  draw_text(text = label, x = x, y = y, hjust = hjust, vjust = vjust, size = size, fontface = fontface, ...)
}


#' Draw a (sub)plot.
#'
#' Places a plot somewhere onto the drawing canvas. By default, coordinates run from
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
  p <- qplot(x=1:10, y=(1:10)^2) #+ theme_gray()
  p_ann <- ggdraw(p) +
    draw_plot_label("A") +
    draw_text("Draft", size = 90, colour = 'red', angle = 45, alpha = .3)
  print(p_ann)
  save_plot("test.pdf", p_ann)
}


