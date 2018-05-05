# *************************************************
#                     Themes
# *************************************************

#' Create the default cowplot theme
#'
#' The default cowplot theme, with a simple half-open frame and no grid. This theme
#' used to be set by default after loading the cowplot package, but this is no longer
#' the case.
#'
#' Both `theme_cowplot()` and `theme_half_open()` provide exactly the same styling.
#'
#' @param font_size Overall font size.
#' @param font_family Font family for plot title, axis titles and labels, legend texts, etc.
#' @param line_size Line size for axis lines.
#' @param rel_small Relative size of small text (e.g., axis tick labels)
#' @param rel_tiny Relative size of tiny text (e.g., caption)
#' @param rel_large Relative size of large text (e.g., title)
#' @return The theme.
#' @examples
#' library(ggplot2)
#' qplot(1:10, (1:10)^2) + theme_cowplot(font_size = 15)
#' @importFrom ggplot2 margin
#' @importFrom grid unit
#' @export
theme_cowplot <- function(font_size = 14, font_family = "", line_size = .5,
                          rel_small = 12/14, rel_tiny = 11/14, rel_large = 16/14) {
  half_line <- font_size / 2
  small_size <- rel_small * font_size

  theme_grey(base_size = font_size, base_family = font_family) %+replace%
    theme(
      rect              = element_rect(fill = "transparent", colour = NA, color = NA, size = 0, linetype = 0),
      text              = element_text(family = font_family, face = "plain", colour = "black",
                                       size = font_size, hjust = 0.5, vjust = 0.5, angle = 0, lineheight = .9,
                                       margin = margin(), debug = FALSE),
      axis.text         = element_text(colour = "black", size = small_size),
      #axis.title        = element_text(face = "bold"),
      axis.text.x       = element_text(margin = margin(t = small_size / 4), vjust = 1),
      axis.text.y       = element_text(margin = margin(r = small_size / 4), hjust = 1),
      axis.title.x      = element_text(margin = margin(t = small_size / 2)),
      axis.title.y      = element_text(angle = 90,
                                       margin = margin(r = small_size / 2)),
      axis.ticks        = element_line(colour = "black", size = line_size),
      axis.line         = element_line(colour = "black", size = line_size, lineend = "square"),
      # the following two lines are not needed for ggplot2 2.2.0 or later
      axis.line.x       = element_line(colour = "black", size = line_size, lineend = "square"),
      axis.line.y       = element_line(colour = "black", size = line_size, lineend = "square"),
      legend.background = element_blank(),
      legend.key        = element_blank(),
      legend.key.size   = unit(1.1*font_size, "pt"),
      legend.spacing    = unit(font_size, "pt"),
      legend.box.spacing = unit(font_size, "pt"),
      legend.margin     = margin(0, 0, 0, 0),
      legend.text       = element_text(size = rel(rel_small)),
      legend.justification = c("left", "center"),
      panel.background  = element_blank(),
      panel.border      = element_blank(),
      panel.grid.major  = element_blank(),
      panel.grid.minor  = element_blank(),
      panel.spacing     = unit(half_line, "pt"),
      strip.text        = element_text(size = rel(rel_small),
                                       margin = margin(half_line, half_line, half_line, half_line)),
      strip.background  = element_rect(fill = "grey80", colour = "grey50"),
      plot.background   = element_blank(),
      plot.title        = element_text(face = "bold",
                                       size = rel(rel_large),
                                       hjust = 0, vjust = 1,
                                       margin = margin(b = half_line)),
      plot.subtitle     = element_text(size = rel(rel_small),
                                       hjust = 0, vjust = 1,
                                       margin = margin(b = half_line)),
      plot.caption      = element_text(size = rel(rel_tiny),
                                       hjust = 1, vjust = 1,
                                       margin = margin(t = half_line)),
      plot.margin =        margin(half_line, half_line, half_line, half_line),

      complete = TRUE
    )
}


#' @rdname theme_cowplot
#' @export
theme_half_open <- theme_cowplot

#' Minimalistic themes with grids
#'
#' Three minimalistic themes that provide either a full grid,
#' a horizontal grid, or a vertical grid. Similar to [`theme_minimal()`], but with some
#' stylistic differences. Most importantly, these themes do not draw minor grid lines.
#' Also, font sizes are coordinated with [`theme_half_open()`] and with the defaults
#' in the [`save_plot()`] function.
#'
#' `theme_minimal_grid()` provides a minimal grid theme. `theme_minimal_hgrid()` strips down
#' this theme even further and draws only horizontal lines, and `theme_minimal_vgrid()`
#' does the same for vertical lines.
#'
#' @param font_size Overall font size.
#' @param font_family Font family for plot title, axis titles and labels, legend texts, etc.
#' @param line_size Line size for grid lines.
#' @param rel_small Relative size of small text (e.g., axis tick labels)
#' @param rel_tiny Relative size of tiny text (e.g., caption)
#' @param rel_large Relative size of large text (e.g., title)
#' @param color Color of grid lines.
#' @examples
#' library(ggplot2)
#'
#' # theme_minimal_grid()
#' ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
#'   geom_point() + theme_minimal_grid()
#'
#' # theme_minimal_hgrid()
#' ggplot(mtcars, aes(x = carb)) +
#'   geom_bar(fill = "lightblue") +
#'   scale_y_continuous(limits = c(0, 11.5), expand = c(0, 0)) +
#'   theme_minimal_hgrid()
#'
#' # theme_minimal_vgrid()
#' ggplot(mtcars, aes(x = carb)) +
#'   geom_bar(fill = "lightblue") +
#'   scale_y_continuous(limits = c(0, 11.5), expand = c(0, 0)) +
#'   coord_flip() +
#'   theme_minimal_vgrid()
#' @export
theme_minimal_grid <- function(font_size = 14, font_family = "", line_size = .5,
                               rel_small = 12/14, rel_tiny = 11/14, rel_large = 16/14,
                               color = "grey90") {
  # Starts with theme_cowplot and then modifies some parts
  theme_cowplot(font_size = font_size, font_family = font_family, line_size = line_size,
                rel_small = rel_small, rel_tiny = rel_tiny, rel_large = rel_large) %+replace%
    theme(
      # make grid lines
      panel.grid.major   = element_line(colour = color,
                                        size = line_size),

      # adjust axis tickmarks
      axis.ticks        = element_line(colour = color, size = line_size),

      # no x or y axis lines
      axis.line.x       = element_blank(),
      axis.line.y       = element_blank(),

      # no filled background for facted plots
      strip.background = element_blank(),

      complete = TRUE
    )
}

#' @rdname theme_minimal_grid
#' @export
theme_minimal_vgrid <- function(font_size = 14, font_family = "", line_size = .5,
                                rel_small = 12/14, rel_tiny = 11/14, rel_large = 16/14,
                                color = "grey90") {
  # Starts with theme_grid and then modifies some parts
  theme_minimal_grid(font_size = font_size, font_family = font_family, line_size = line_size,
                     rel_small = rel_small, rel_tiny = rel_tiny, rel_large = rel_large,
                     color = color) %+replace%
    theme (
      # no horizontal grid lines
      panel.grid.major.y = element_blank(),

      # add a y axis line
      axis.line.y       = element_line(colour = color, size = line_size),

      complete = TRUE
    )
}

#' @rdname theme_minimal_grid
#' @export
theme_minimal_hgrid <- function(font_size = 14, font_family = "", line_size = .5,
                                rel_small = 12/14, rel_tiny = 11/14, rel_large = 16/14, color = "grey90") {
  # Starts with theme_grid and then modifies some parts
  theme_minimal_grid(font_size = font_size, font_family = font_family, line_size = line_size,
                     rel_small = rel_small, rel_tiny = rel_tiny, rel_large = rel_large,
                     color = color) %+replace%
    theme (
      # no vertical grid lines
      panel.grid.major.x = element_blank(),

      # add a x axis line
      axis.line.x       = element_line(colour = color, size = line_size),

      complete = TRUE
    )
}

#' Create a completely empty theme
#'
#' The theme created by this function shows nothing but the plot panel.
#' @param font_size Overall font size. Default is 14.
#' @param font_family Base font family.
#' @param rel_small Relative size of small text
#' @return The theme.
#' @examples
#' library(ggplot2)
#'
#' qplot(1:10, (1:10)^2) + theme_nothing()
#' @export
theme_nothing <- function(font_size = 14, font_family = "", rel_small = 12/14){
  # work based off of theme_void just in case we forget anything or something
  # changes in underlying ggplot2 code
  theme_void(base_size = font_size, base_family = font_family) %+replace%
    theme(
      # Elements in this first block aren't used directly, but are inherited
      line = element_blank(),
      rect = element_blank(),
      text = element_text(
        family = font_family, face = "plain",
        colour = "black", size = font_size,
        lineheight = 0.9, hjust = 0.5, vjust = 0.5, angle = 0,
        margin = margin(), debug = FALSE
      ),

      axis.line =          element_blank(),
      axis.line.x =        NULL,
      axis.line.y =        NULL,
      axis.text =          element_blank(),
      axis.text.x =        element_blank(),
      axis.text.x.top =    element_blank(),
      axis.text.y =        element_blank(),
      axis.text.y.right =  element_blank(),
      axis.ticks =         element_blank(),
      axis.ticks.length =  unit(0, "pt"),
      axis.title.x =       element_blank(),
      axis.title.x.top =   element_blank(),
      axis.title.y =       element_blank(),
      axis.title.y.right = element_blank(),

      legend.background =  element_blank(),
      legend.spacing =     unit(0.4, "cm"),
      legend.spacing.x =   NULL,
      legend.spacing.y =   NULL,
      legend.margin =      margin(0.2, 0.2, 0.2, 0.2, "cm"),
      legend.key =         element_blank(),
      legend.key.size =    unit(1.2, "lines"),
      legend.key.height =  NULL,
      legend.key.width =   NULL,
      legend.text =        element_text(size = rel(rel_small)),
      legend.text.align =  NULL,
      legend.title =       element_text(hjust = 0),
      legend.title.align = NULL,
      legend.position =    "none",
      legend.direction =   NULL,
      legend.justification = "center",
      legend.box =         NULL,
      legend.box.margin =  margin(0, 0, 0, 0, "cm"),
      legend.box.background = element_blank(),
      legend.box.spacing = unit(0.4, "cm"),

      panel.background =   element_blank(),
      panel.border =       element_blank(),
      panel.grid.major =   element_blank(),
      panel.grid.minor =   element_blank(),
      panel.spacing =      unit(0, "pt"),
      panel.spacing.x =    NULL,
      panel.spacing.y =    NULL,
      panel.ontop    =     FALSE,

      strip.background =   element_blank(),
      strip.text =         element_blank(),
      strip.text.x =       element_blank(),
      strip.text.y =       element_blank(),
      strip.placement =    "inside",
      strip.placement.x =  NULL,
      strip.placement.y =  NULL,
      strip.switch.pad.grid = unit(0., "cm"),
      strip.switch.pad.wrap = unit(0., "cm"),

      plot.background =    element_blank(),
      plot.title =         element_blank(),
      plot.subtitle =      element_blank(),
      plot.caption =       element_blank(),
      plot.margin =        margin(0, 0, 0, 0),

      complete = TRUE
    )
}

#' Create a theme for map plotting
#'
#' The theme created by this function is useful for plotting maps with cowplot default sizing.
#' @param font_size Overall font size. Default is 14.
#' @param font_family Base font family.
#' @param line_size Line size for axis lines.
#' @param rel_small Relative size of small text (e.g., axis tick labels)
#' @param rel_tiny Relative size of tiny text (e.g., caption)
#' @param rel_large Relative size of large text (e.g., title)
#' @return The theme.
#' @examples
#' library(ggplot2)
#' library(maps)
#'
#' usa_data = map_data("usa")
#' ggplot(usa_data, aes(long, lat, group=region)) + geom_polygon() + theme_map()
#' ggplot(usa_data, aes(long, lat, fill = region)) + geom_polygon() + theme_map()
#' ggplot(usa_data, aes(long, lat, fill = region)) + facet_wrap(~region, scales = "free") +
#'   geom_polygon() + theme_map()
#' @export
theme_map <- function(font_size = 14, font_family = "", line_size = .5,
                      rel_small = 12/14, rel_tiny = 11/14, rel_large = 16/14){
  # work based off of theme_cowplot to get font sizing right
  theme_cowplot(font_size = font_size, font_family = font_family, line_size = line_size,
                rel_small = rel_small, rel_tiny = rel_tiny, rel_large = rel_large) %+replace%
    theme(
      line = element_blank(),
      rect = element_blank(),

      axis.line =          element_blank(),
      axis.line.x =        NULL,
      axis.line.y =        NULL,
      axis.text =          element_blank(),
      axis.text.x =        element_blank(),
      axis.text.x.top =    element_blank(),
      axis.text.y =        element_blank(),
      axis.text.y.right =  element_blank(),
      axis.ticks =         element_blank(),
      axis.ticks.length =  unit(0, "pt"),
      axis.title.x =       element_blank(),
      axis.title.x.top =   element_blank(),
      axis.title.y =       element_blank(),
      axis.title.y.right = element_blank(),

      complete = TRUE
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
#' @examples
#' library(ggplot2)
#'
#' ggplot(iris, aes(Sepal.Length, Sepal.Width)) +
#'  geom_point() +
#'  theme_half_open() +
#'  background_grid()
#' @export
background_grid <- function(major = c("xy", "x", "y", "only_minor", "none"),
                            minor = c("none", "xy", "x", "y"),
                            size.major = 0.5, size.minor = 0.2,
                            colour.major = "grey90", colour.minor = "grey90"){

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
  theme(panel.border = element_rect(colour = colour, fill=NA, linetype = linetype, size = size))
}

