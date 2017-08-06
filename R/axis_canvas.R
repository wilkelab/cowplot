#' @export
insert_yaxis_grob <- function(plot, grob, width = grid::unit(1, "null"), position = c("right", "left"))
{
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

#' @export
insert_xaxis_grob <- function(plot, grob, height = grid::unit(1, "null"), position = c("top", "bottom"))
{
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

#' Generates a canvas onto which one can draw axis-like objects.
#'
#' @examples
#' # continuous case
#' x <- seq(0, 10, .1)
#' d <- data.frame(x,
#'                 linear = x,
#'                 squared = x*x/5,
#'                 cubed = x*x*x/25) %>%
#'   gather(fun, y, -x)
#'
#' pmain <- ggplot(d, aes(x, y, group = fun)) + geom_line()  +
#'   scale_x_continuous(expand = c(0, 0)) +
#'   scale_y_continuous(limits = c(0, 60))
#'
#' paxis <- axis_canvas(pmain, axis = "y") +
#'   geom_text(data = filter(d, x==max(x)), aes(y = y, label=paste0(" ", fun)),
#'             x = 0, hjust = 0, vjust = 0.5)
#' ggdraw(insert_yaxis_grob(pmain, get_panel(paxis), grid::unit(.25, "null")))
#' @export
axis_canvas <- function(plot, axis = "y", xlim = NULL, ylim = NULL) {
  xlimits = switch(axis,
                   x = get_scale_limits(layer_scales(pmain)$x),
                   xy = get_scale_limits(layer_scales(pmain)$x),
                   yx = get_scale_limits(layer_scales(pmain)$x),
                   xlim)

  ylimits = switch(axis,
                   y = get_scale_limits(layer_scales(pmain)$y),
                   xy = get_scale_limits(layer_scales(pmain)$y),
                   yx = get_scale_limits(layer_scales(pmain)$y),
                   ylim)

  ggplot() +
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

