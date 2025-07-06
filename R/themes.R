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
#'
#' ggplot(mtcars, aes(disp, mpg)) +
#'   geom_point() +
#'   theme_cowplot(font_size = 12)
#' @importFrom ggplot2 margin
#' @importFrom grid unit
#' @export
theme_cowplot <- function(font_size = 14, font_family = "", line_size = .5,
                          rel_small = 12/14, rel_tiny = 11/14, rel_large = 16/14) {
  half_line <- font_size / 2
  small_size <- rel_small * font_size

  # work off of theme_grey just in case some new theme element comes along
  theme_grey(base_size = font_size, base_family = font_family) %+replace%
    theme(
      line              = element_line(color = "black", linewidth = line_size, linetype = 1, lineend = "butt"),
      rect              = element_rect(fill = NA, color = NA, linewidth = line_size, linetype = 1),
      text              = element_text(family = font_family, face = "plain", color = "black",
                                       size = font_size, hjust = 0.5, vjust = 0.5, angle = 0, lineheight = .9,
                                       margin = margin(), debug = FALSE),

      axis.line         = element_line(color = "black", linewidth = line_size, lineend = "square"),
      axis.line.x       = NULL,
      axis.line.y       = NULL,
      axis.text         = element_text(color = "black", size = small_size),
      axis.text.x       = element_text(margin = margin(t = small_size / 4), vjust = 1),
      axis.text.x.top   = element_text(margin = margin(b = small_size / 4), vjust = 0),
      axis.text.y       = element_text(margin = margin(r = small_size / 4), hjust = 1),
      axis.text.y.right = element_text(margin = margin(l = small_size / 4), hjust = 0),
      axis.ticks        = element_line(color = "black", linewidth = line_size),
      axis.ticks.length = unit(half_line / 2, "pt"),
      axis.title.x      = element_text(
                            margin = margin(t = half_line / 2),
                            vjust = 1
                          ),
      axis.title.x.top  = element_text(
                            margin = margin(b = half_line / 2),
                            vjust = 0
                          ),
      axis.title.y      = element_text(
                            angle = 90,
                            margin = margin(r = half_line / 2),
                            vjust = 1
                          ),
      axis.title.y.right = element_text(
                             angle = -90,
                             margin = margin(l = half_line / 2),
                             vjust = 0
                           ),


      legend.background = element_blank(),
      legend.spacing    = unit(font_size, "pt"),
      legend.spacing.x  = NULL,
      legend.spacing.y  = NULL,
      legend.margin     = margin(0, 0, 0, 0),
      legend.key        = element_blank(),
      legend.key.size   = unit(1.1 * font_size, "pt"),
      legend.key.height = NULL,
      legend.key.width  = NULL,
      legend.text       = element_text(size = rel(rel_small)),
      legend.text.align = NULL,
      legend.title      = element_text(hjust = 0),
      legend.title.align = NULL,
      legend.position   = "right",
      legend.direction  = NULL,
      legend.justification = c("left", "center"),
      legend.box        = NULL,
      legend.box.margin =  margin(0, 0, 0, 0),
      legend.box.background = element_blank(),
      legend.box.spacing = unit(font_size, "pt"),

      panel.background  = element_blank(),
      panel.border      = element_blank(),
      panel.grid        = element_blank(),
      panel.grid.major  = NULL,
      panel.grid.minor  = NULL,
      panel.grid.major.x = NULL,
      panel.grid.major.y = NULL,
      panel.grid.minor.x = NULL,
      panel.grid.minor.y = NULL,
      panel.spacing     = unit(half_line, "pt"),
      panel.spacing.x   = NULL,
      panel.spacing.y   = NULL,
      panel.ontop       = FALSE,

      strip.background  = element_rect(fill = "grey80"),
      strip.text        = element_text(
                            size = rel(rel_small),
                            margin = margin(half_line / 2, half_line / 2,
                                            half_line / 2, half_line / 2)
                          ),
      strip.text.x      = NULL,
      strip.text.y      = element_text(angle = -90),
      strip.placement   = "inside",
      strip.placement.x =  NULL,
      strip.placement.y =  NULL,
      strip.switch.pad.grid = unit(half_line / 2, "pt"),
      strip.switch.pad.wrap = unit(half_line / 2, "pt"),

      plot.background   = element_blank(),
      plot.title        = element_text(
                            face = "bold",
                            size = rel(rel_large),
                            hjust = 0, vjust = 1,
                            margin = margin(b = half_line)
                          ),
      plot.subtitle     = element_text(
                            size = rel(rel_small),
                            hjust = 0, vjust = 1,
                            margin = margin(b = half_line)
                          ),
      plot.caption      = element_text(
                            size = rel(rel_tiny),
                            hjust = 1, vjust = 1,
                            margin = margin(t = half_line)
                          ),
      plot.tag           = element_text(
                             face = "bold",
                             hjust = 0, vjust = 0.7
                           ),
      plot.tag.position = c(0, 1),
      plot.margin       = margin(half_line, half_line, half_line, half_line),

      complete = TRUE
    )
}


#' @rdname theme_cowplot
#' @export
theme_half_open <- theme_cowplot

#' Minimalistic themes with grids
#'
#' Three minimalistic themes that provide either a full grid,
#' a horizontal grid, or a vertical grid. Similar to [ggplot2::theme_minimal()], but with some
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
#' @param color,colour Color of grid lines.
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
                               color = "grey85", colour) {
  if (!missing(colour)) {
    color <- colour
  }

  # Starts with theme_cowplot and then modifies some parts
  theme_cowplot(font_size = font_size, font_family = font_family, line_size = line_size,
                rel_small = rel_small, rel_tiny = rel_tiny, rel_large = rel_large) %+replace%
    theme(
      # make grid lines
      panel.grid        = element_line(color = color,
                                       linewidth = line_size),
      panel.grid.minor  = element_blank(),

      # adjust axis tickmarks
      axis.ticks        = element_line(color = color, linewidth = line_size),

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
                                color = "grey85", colour) {
  if (!missing(colour)) {
    color <- colour
  }

  # Starts with theme_grid and then modifies some parts
  theme_minimal_grid(font_size = font_size, font_family = font_family, line_size = line_size,
                     rel_small = rel_small, rel_tiny = rel_tiny, rel_large = rel_large,
                     color = color) %+replace%
    theme (
      # no horizontal grid lines
      panel.grid.major.y = element_blank(),

      # add a y axis line
      axis.line.y        = element_line(color = color, linewidth = line_size),

      complete = TRUE
    )
}

#' @rdname theme_minimal_grid
#' @export
theme_minimal_hgrid <- function(font_size = 14, font_family = "", line_size = .5,
                                rel_small = 12/14, rel_tiny = 11/14, rel_large = 16/14,
                                color = "grey85", colour) {
  if (!missing(colour)) {
    color <- colour
  }

  # Starts with theme_grid and then modifies some parts
  theme_minimal_grid(font_size = font_size, font_family = font_family, line_size = line_size,
                     rel_small = rel_small, rel_tiny = rel_tiny, rel_large = rel_large,
                     color = color) %+replace%
    theme (
      # no vertical grid lines
      panel.grid.major.x = element_blank(),

      # add a x axis line
      axis.line.x       = element_line(color = color, linewidth = line_size),

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
#' ggplot(mtcars, aes(disp, mpg, color = cyl)) +
#'   geom_point() +
#'   theme_nothing()
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
        color = "black", size = font_size,
        lineheight = 0.9, hjust = 0.5, vjust = 0.5, angle = 0,
        margin = margin(), debug = FALSE
      ),

      axis.line =          element_blank(),
      axis.line.x =        NULL,
      axis.line.y =        NULL,
      axis.text =          element_blank(),
      axis.text.x =        NULL,
      axis.text.x.top =    NULL,
      axis.text.y =        NULL,
      axis.text.y.right =  NULL,
      axis.ticks =         element_blank(),
      axis.ticks.length =  unit(0, "pt"),
      axis.title =         element_blank(),
      axis.title.x =       NULL,
      axis.title.x.top =   NULL,
      axis.title.y =       NULL,
      axis.title.y.right = NULL,

      legend.background =  element_blank(),
      legend.spacing =     unit(font_size, "pt"),
      legend.spacing.x =   NULL,
      legend.spacing.y =   NULL,
      legend.margin =      margin(0, 0, 0, 0),
      legend.key =         element_blank(),
      legend.key.size =    unit(1.1*font_size, "pt"),
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
      legend.box.margin =  margin(0, 0, 0, 0),
      legend.box.background = element_blank(),
      legend.box.spacing = unit(font_size, "pt"),

      panel.background =   element_blank(),
      panel.border =       element_blank(),
      panel.grid =         element_blank(),
      panel.grid.major =   NULL,
      panel.grid.minor =   NULL,
      panel.spacing =      unit(font_size / 2, "pt"),
      panel.spacing.x =    NULL,
      panel.spacing.y =    NULL,
      panel.ontop    =     FALSE,

      strip.background =   element_blank(),
      strip.text =         element_blank(),
      strip.text.x =       NULL,
      strip.text.y =       NULL,
      strip.placement =    "inside",
      strip.placement.x =  NULL,
      strip.placement.y =  NULL,
      strip.switch.pad.grid = unit(0., "cm"),
      strip.switch.pad.wrap = unit(0., "cm"),

      plot.background =    element_blank(),
      plot.title =         element_blank(),
      plot.subtitle =      element_blank(),
      plot.caption =       element_blank(),
      plot.tag           = element_text(
                            face = "bold",
                            hjust = 0, vjust = 0.7
                           ),
      plot.tag.position = c(0, 1),

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
#' ggplot(usa_data, aes(long, lat, fill = region)) +
#'   geom_polygon() + theme_map()
#' ggplot(usa_data, aes(long, lat, fill = region)) +
#'   facet_wrap(~region, scales = "free") +
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
      axis.text.x =        NULL,
      axis.text.x.top =    NULL,
      axis.text.y =        NULL,
      axis.text.y.right =  NULL,
      axis.ticks =         element_blank(),
      axis.ticks.length =  unit(0, "pt"),
      axis.title =         element_blank(),
      axis.title.x =       NULL,
      axis.title.x.top =   NULL,
      axis.title.y =       NULL,
      axis.title.y.right = NULL,

      complete = TRUE
    )
}



#' Add/modify/remove the background grid in a ggplot2 plot
#'
#' This function provides a simple way to set the background grid in ggplot2. It
#' doesn't do anything that can't be done just the same with [ggplot2::theme()]. However, it simplifies
#' creation of the most commonly needed variations.
#'
#' Note: This function completely overwrites all background grid settings of the current theme. If that
#' is not what you want, you may be better off using [ggplot2::theme()] directly.
#' @param major Specifies along which axes you would like to plot major grid lines. Options are "xy", "x",
#'  "y", "none".
#' @param minor Specifies along which axes you would like to plot minor grid lines. Options are "xy", "x",
#'  "y", "none".
#' @param size.major Size of the major grid lines.
#' @param size.minor Size of the minor grid lines.
#' @param color.major,colour.major Color of the major grid lines.
#' @param color.minor,colour.minor Color of the minor grid lines.
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
                            color.major = "grey85", color.minor = "grey85",
                            colour.major, colour.minor){
  if (!missing(colour.major)) {
    color.major <- colour.major
  }

  if (!missing(colour.minor)) {
    color.minor <- colour.minor
  }


  # start with a defined theme that corresponds to the default settings
  t <- theme(
    panel.grid = element_line(
      color = color.major,
      linewidth = size.major,
      linetype = 1,
      lineend = "butt"
    ),
    panel.grid.major = NULL,
    panel.grid.major.x = NULL,
    panel.grid.major.y = NULL,
    panel.grid.minor = element_line(
      color = color.minor,
      linewidth = size.minor,
      linetype = 1,
      lineend = "butt"
    ),
    panel.grid.minor.x = element_blank(),
    panel.grid.minor.y = element_blank()
  )

  t <- switch(major[1],
    x = t + theme(panel.grid.major.y = element_blank()),
    y = t + theme(panel.grid.major.x = element_blank()),
    xy = t,
    yx = t,
    t + theme(panel.grid.major = element_blank())
  )

  t <- switch(minor[1],
    x = t + theme(panel.grid.minor.x = NULL),
    y = t + theme(panel.grid.minor.y = NULL),
    xy = t + theme(
      panel.grid.minor.x = NULL,
      panel.grid.minor.y = NULL),
    yx = t + theme(
      panel.grid.minor.x = NULL,
      panel.grid.minor.y = NULL),
    t
  )

  t
}


#' Add/remove the panel border in a ggplot2 plot
#'
#' This function provides a simple way to modify the panel border in ggplot2. It
#' doesn't do anything that can't be done just the same with [ggplot2::theme()]. However, it
#' saves some typing.
#' @param color,colour The color of the border.
#' @param size Size. Needs to be twice as large as desired outcome when panel clipping
#'   is on (the default).
#' @param linetype Line type.
#' @param remove If \code{TRUE}, removes the current panel border.
#' @export
panel_border <- function(color = 'grey85', size = 1, linetype = 1, remove = FALSE, colour){
  if (!missing(colour)) {
    color <- colour
  }

  if (remove){
    return(theme(panel.border = element_blank()))
  }
  theme(panel.border = element_rect(color = color, fill = NA, linetype = linetype, linewidth = size))
}

