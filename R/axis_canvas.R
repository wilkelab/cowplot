#' Insert an axis-like grob on either side of a plot panel in a [ggplot2] plot.
#'
#' The function `insert_xaxis_grob()` inserts a grob at the top or bottom of the plot panel in a [ggplot2] plot.
#' The function `insert_yaxis_grob()` inserts a grob to the right or left of the plot panel in a [ggplot2] plot.
#'
#' For usage examples, see [axis_canvas()].
#' @param plot The plot into which the grob will be inserted.
#' @param grob The grob to insert. This will generally have been obtained via [get_panel()]
#'   from a ggplot2 object, in particular one generated with [axis_canvas()]. If a ggplot2
#'   plot is provided instead of a grob, then [get_panel()] is called to extract the
#'   panel grob.
#' @param width The width of the grob, in grid units. Used by `insert_yaxis_grob()`.
#' @param height The height of the grob, in grid units. Used by `insert_xaxis_grob()`.
#' @param position The position of the grob. Can be `"right"` or `"left"` for `insert_yaxis_grob()`
#'   and `"top"` or `"botton"` for `insert_xaxis_grob()`.
#' @export
insert_xaxis_grob <- function(plot, grob, height = grid::unit(0.2, "null"), position = c("top", "bottom"))
{
  # if a plot is provided instead of a grob we extract the panel from that plot
  if (methods::is(grob, "ggplot")){
    grob <- get_panel(grob)
  }

  gt <- plot_to_gtable(plot)

  pp <- gt$layout[gt$layout$name == "panel",]
  if (nrow(pp) != 1)
  {
    stop("Can only insert grob on plots with exactly one panel.")
  }

  if (position[1] == "top") {
    g <- gtable::gtable_add_rows(gt, height, pp$t-1)
    g <- gtable::gtable_add_grob(g, grob, pp$t, pp$l, pp$t, pp$r, clip = "inherit", name="xaxis-grob-t")
  }
  else {
    g <- gtable::gtable_add_rows(gt, height, pp$b)
    g <- gtable::gtable_add_grob(g, grob, pp$b+1, pp$l, pp$b+1, pp$r, clip = "inherit", name="xaxis-grob-b")
  }
}

#' @rdname insert_xaxis_grob
#' @export
insert_yaxis_grob <- function(plot, grob, width = grid::unit(0.2, "null"), position = c("right", "left"))
{
  # if a plot is provided instead of a grob we extract the panel from that plot
  if (methods::is(grob, "ggplot")){
    grob <- get_panel(grob)
  }

  gt <- plot_to_gtable(plot)

  pp <- gt$layout[gt$layout$name == "panel",]
  if (nrow(pp) != 1)
  {
    stop("Can only insert grob on plots with exactly one panel.")
  }

  if (position[1] == "right") {
    g <- gtable::gtable_add_cols(gt, width, pp$r)
    g <- gtable::gtable_add_grob(g, grob, pp$t, pp$r+1, pp$b, pp$r+1, clip = "inherit", name="yaxis-grob-r")
  }
  else {
    g <- gtable::gtable_add_cols(gt, width, pp$l-1)
    g <- gtable::gtable_add_grob(g, grob, pp$t, pp$l, pp$b, pp$l, clip = "inherit", name="yaxis-grob-l")
  }
}

#' Generates a canvas onto which one can draw axis-like objects.
#'
#' This function takes an existing [ggplot2] plot and copies one or both of the axis into a new plot.
#' The main idea is to use this in conjunction with [insert_xaxis_grob()] or [insert_yaxis_grob()] to
#' draw custom axis-like objects or margin annotations. Importantly, while this function works for
#' both continuous and discrete scales, notice that discrete scales are converted into continuous scales
#' in the returned axis canvas. The levels of the discrete scale are placed at continuous values of
#' 1, 2, 3, etc. See Examples for an example of how to convert a discrete scale into a continuous
#' scale.
#' @param plot The plot defining the x and/or y axis range for the axis canvas.
#' @param axis Specifies which axis to copy from `plot`. Can be `"x"`, `"y"`, or `"xy"`.
#' @param data (optional) Data to be displayed in this layer.
#' @param mapping (optional) Aesthetic mapping to be used in this layer.
#' @param xlim (optional) Vector of two numbers specifying the limits of the x axis. Ignored
#' if the x axis is copied over from `plot`.
#' @param ylim (optional) Vector of two numbers specifying the limits of the y axis. Ignored
#' if the y axis is copied over from `plot`.
#' @param coord_flip (optional) If `true`, flips the coordinate system and applies x limits to
#'   the y axis and vice versa. Useful in combination with [ggplot2]'s [coord_flip()] function.
#' @examples
#' # annotate line graphs with labels on the right
#' library(dplyr)
#' library(tidyr)
#' x <- seq(0, 10, .1)
#' d <- data.frame(x,
#'                 linear = x,
#'                 squared = x*x/5,
#'                 cubed = x*x*x/25) %>%
#'   gather(fun, y, -x)
#'
#' pmain <- ggplot(d, aes(x, y, group = fun)) + geom_line()  +
#'   scale_x_continuous(expand = c(0, 0))
#'
#' paxis <- axis_canvas(pmain, axis = "y") +
#'   geom_text(data = filter(d, x == max(x)), aes(y = y, label = paste0(" ", fun)),
#'             x = 0, hjust = 0, vjust = 0.5)
#' ggdraw(insert_yaxis_grob(pmain, paxis, grid::unit(.25, "null")))
#'
#' # discrete scale with integrated color legend
#' pmain <- ggplot(iris, aes(x = Species, y = Sepal.Length, fill = Species)) +
#'   geom_violin(trim = FALSE) + guides(fill = "none") +
#'   scale_x_discrete(labels = NULL) +
#'   theme_minimal()
#'
#' label_data <- data.frame(x = 1:nlevels(iris$Species),
#'                          Species = levels(iris$Species))
#' paxis <- axis_canvas(pmain, axis = "x", data = label_data, mapping = aes(x = x)) +
#'   geom_tile(aes(fill = Species, y = 0.5), width = 0.9, height = 0.3) +
#'   geom_text(aes(label = Species, y = 0.5), hjust = 0.5, vjust = 0.5, size = 11/.pt)
#' ggdraw(insert_xaxis_grob(pmain, paxis, grid::unit(.07, "null"),
#'                          position = "bottom"))
#'
#' # add marginal density distributions to plot
#' pmain <- ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) + geom_point()
#'
#' xdens <- axis_canvas(pmain, axis = "x") +
#'   geom_density(data=iris, aes(x=Sepal.Length, fill=Species), alpha=0.7, size=.2)
#'
#' # need to set `coord_flip = TRUE` if you plan to use `coord_flip()`
#' ydens <- axis_canvas(pmain, axis = "y", coord_flip = TRUE) +
#'   geom_density(data=iris, aes(x=Sepal.Width, fill=Species), alpha=0.7, size=.2) +
#'   coord_flip()
#'
#' p1 <- insert_xaxis_grob(pmain, xdens, grid::unit(.2, "null"), position = "top")
#' p2 <- insert_yaxis_grob(p1, ydens, grid::unit(.2, "null"), position = "right")
#' ggdraw(p2)
#' @export
axis_canvas <- function(plot, axis = "y", data = NULL, mapping = aes(), xlim = NULL, ylim = NULL, coord_flip = FALSE) {
  xlimits = switch(axis,
                   x = get_scale_limits(layer_scales(plot)$x),
                   xy = get_scale_limits(layer_scales(plot)$x),
                   yx = get_scale_limits(layer_scales(plot)$x),
                   xlim)

  ylimits = switch(axis,
                   y = get_scale_limits(layer_scales(plot)$y),
                   xy = get_scale_limits(layer_scales(plot)$y),
                   yx = get_scale_limits(layer_scales(plot)$y),
                   ylim)

  if (coord_flip) {
    temp <- xlimits
    xlimits <- ylimits
    ylimits <- temp
  }

  ggplot(data = data, mapping = mapping) +
    scale_x_continuous(limits = xlimits, expand = c(0, 0)) +
    scale_y_continuous(limits = ylimits, expand = c(0, 0)) +
    theme_nothing()
}

get_scale_limits <- function(scale)
{
  if (scale$is_empty()) {
    c(0, 1)
  }
  else if (scale$is_discrete()) {
    range_c <- scale$range_c$range
    range_d <- scale$range$range
    if (is.waive(scale$expand)) expand <- c(0, 0.6)
    else expand <- scale$expand

    if (is.null(range_d)) { # only continuous
      scales::expand_range(range_c, expand[1], expand[2])
    }
    else if (is.null(range_c)) { # only discrete
      scales::expand_range(c(1, length(range_d)), expand[1], expand[2])
    }
    else { # both
      range(scales::expand_range(range_c, expand[1], 0),
            scales::expand_range(c(1, length(range_d)), 0, expand[2]))
    }
  }
  else {
    range <- scale$range$range
    if (!is.null(scale$limits)) range <- scale$limits

    if (is.waive(scale$expand)) expand <- c(0.05, 0)
    else expand <- scale$expand

    scales::expand_range(range, expand[1], expand[2])
  }
}

