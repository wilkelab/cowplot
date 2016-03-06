# *************************************************
#                     Themes
# *************************************************

#' Create the default cowplot theme
#'
#' After loading the cowplot package, this theme will be the default
#' for all graphs made with ggplot2.
#'
#' @param font_size Overall font size. Default is 14.
#' @param font_family Default font family.
#' @param line_size Default line size.
#' @return The theme.
#' @examples
#' qplot(1:10, (1:10)^2) + theme_cowplot(font_size = 15)
#' @export
theme_cowplot <- function(font_size = 14, font_family = "", line_size = .5) {
  half_line <- font_size / 2
  small_rel <- 0.857
  small_size <- small_rel * font_size

  theme_grey(base_size = font_size, base_family = font_family) %+replace%
    theme(
      rect              = element_rect(fill = "transparent", colour = NA, color = NA, size = 0, linetype = 0),
      text              = element_text(family = font_family, face = "plain", colour = "black",
                                       size = font_size, hjust = 0.5, vjust = 0.5, angle = 0, lineheight = .9,
                                       margin = ggplot2::margin(), debug = FALSE),
      axis.text         = element_text(colour = "black", size = small_size),
      #axis.title        = element_text(face = "bold"),
      axis.text.x       = element_text(margin = ggplot2::margin(t = small_size / 4), vjust = 1),
      axis.text.y       = element_text(margin = ggplot2::margin(r = small_size / 4), hjust = 1),
      axis.title.x      = element_text(
        margin = ggplot2::margin(t = small_size / 2, b = small_size / 4)
      ),
      axis.title.y      = element_text(
        angle = 90,
        margin = ggplot2::margin(r = small_size / 2, l = small_size / 4),
      ),
      axis.ticks        = element_line(colour = "black", size = line_size),
      axis.line.x       = element_line(colour = "black", size = line_size),
      axis.line.y       = element_line(colour = "black", size = line_size),
      legend.key        = element_blank(),
      legend.margin     = grid::unit(0.1, "cm"),
      legend.key.size   = grid::unit(1, "lines"),
      legend.text       = element_text(size = rel(small_rel)),
      #    legend.position   = c(-0.03, 1.05),
      #    legend.justification = c("left", "top"),
      panel.background  = element_blank(),
      panel.border      = element_blank(),
      panel.grid.major  = element_blank(),
      panel.grid.minor  = element_blank(),
      strip.text        = element_text(size = rel(small_rel)),
      strip.background  = element_rect(fill = "grey80", colour = "grey50", size = 0),
      plot.background   = element_blank(),
      plot.title        = element_text(face = "bold",
                                       size = font_size,
                                       margin = ggplot2::margin(b = half_line))
    )
}


#' Create a completely empty theme
#'
#' The theme created by this function shows nothing but the plot panel. Unfortunately,
#' due to ggplot2 peculiarities, a little bit of padding remains to the left and bottom of
#' the panel. This can be removed by adding \code{labs(x = NULL, y = NULL)} to the plot, see examples.
#' @param base_size Overall font size. Default is 14.
#' @param base_family Base font family.
#' @return The theme.
#' @examples
#' # plot with small amount of remaining padding
#' qplot(1:10, (1:10)^2) + theme_nothing()
#' # remaining padding removed
#' qplot(1:10, (1:10)^2) + theme_nothing() + labs(x = NULL, y = NULL)
#' @export
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
      axis.ticks.length = grid::unit(0, "lines"),
      legend.position   = "none",
      panel.margin      = grid::unit(c(0, 0, 0, 0), "lines"),
      plot.margin       = grid::unit(c(0, 0, 0, 0), "lines")
    )
}


#' Add/modify/remove the background grid in a ggplot2 plot
#'
#' This function provides a simple way to modify the background grid in ggplot2. It
#' doesn't do anything that can't be done just the same with \code{theme()}. However, it simplifies
#' creation of the most commonly needed variations.
#' @param major Specifies along which axes you would like to plot major grid lines. Options are "xy", "x",
#'  "y", "only_minor" (disables major grid lines but allows you to switch on minor grid lines), "none".
#' @param minor Specifies along which axes you would like to plot minor grid lines. Options are "xy", "x",
#'  "y", "none".
#' @param size.major Size of the major grid lines.
#' @param size.minor Size of the minor grid lines.
#' @param colour.major Color of the major grid lines.
#' @param colour.minor Color of the minor grid lines.
#' @export
background_grid <- function(major = c("xy", "x", "y", "only_minor", "none"),
                            minor = c("xy", "x", "y", "none"),
                            size.major = 0.2, size.minor = 0.5,
                            colour.major = "grey90", colour.minor = "grey98"){

  if (major[1] == "none") return(theme(panel.grid = element_blank()))

  t <- switch( major[1],
               x = theme(panel.grid.major   = element_line(colour = colour.major,
                                                           size = size.major),
                         panel.grid.major.y = element_blank()),
               y = theme(panel.grid.major   = element_line(colour = colour.major,
                                                           size = size.major),
                         panel.grid.major.x = element_blank()),
               xy = theme(panel.grid.major = element_line(colour = colour.major,
                                                          size = size.major)),
               yx = theme(panel.grid.major = element_line(colour = colour.major,
                                                          size = size.major)),
               theme(panel.grid.major = element_blank()))

  t + switch( minor[1],
              x = theme(panel.grid.minor   = element_line(colour = colour.minor,
                                                          size = size.minor),
                        panel.grid.minor.y = element_blank()),
              y = theme(panel.grid.minor   = element_line(colour = colour.minor,
                                                          size = size.minor),
                        panel.grid.minor.x = element_blank()),
              xy = theme(panel.grid.minor = element_line(colour = colour.minor,
                                                         size = size.minor)),
              yx = theme(panel.grid.minor = element_line(colour = colour.minor,
                                                         size = size.minor)),
              theme(panel.grid.minor = element_blank()))
}


#' Add/remove the panel border in a ggplot2 plot
#'
#' This function provides a simple way to modify the panel border in ggplot2. It
#' doesn't do anything that can't be done just the same with \code{theme()}. However, it
#' saves some typing.
#' @param colour The color of the border.
#' @param size Size.
#' @param linetype Line type.
#' @param remove If \code{TRUE}, removes the current panel border.
#' @export
panel_border <- function(colour = 'gray80', size = 0.5, linetype = 1, remove = FALSE){
  if (remove){
    return(theme(panel.border = element_blank()))
  }
  theme(panel.border = element_rect(colour = colour, fill=NA, linetype = 1, size = 0.5))
}

