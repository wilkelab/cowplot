#' cowplot.
#'
#' A simple add-on to ggplot2 that changes the default theme and provides a few additional, useful things.
#' @name cowplot
#' @docType package
#' @import ggplot2
NULL


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

# never, ever again worry about misrendered dingbats
ggsave <- function(...){
  ggplot2::ggsave(..., useDingbats = FALSE)
}

#' Add a watermark to a plot
# http://www.r-bloggers.com/adding-watermarks-to-plots/
watermark <- function(label="Draft"){
  my_grob = grid::grobTree(grid::textGrob(label, x = 0.5,  y = 0.5, rot = 45,
                            gp=grid::gpar(col = "red", alpha = .4, fontsize = 56)))
  annotation_custom(my_grob)
}


line <- function(x1, y1, x2, y2){
  d <- data.frame(x = c(x1, x2), y = c(y1, y2))
  geom_line(data = d, aes(x = x, y = y), colour = 'green')
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
  p + annotation_custom(text.grob) + annotation_custom(plot.grob) + line(1, 0, .5, .5)
}

.onAttach <- function(libname, pkgname) {
    # switch the default theme to theme_cow
    ggplot2::theme_set(theme_cow())
}
