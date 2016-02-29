# function that can horizontally invert a title grob, with margins treated properly
# title grobs are used a lot in the new ggplot2 version (>1.0.1)
hinvert_title_grob <- function(grob)
{
  # fix the layout
  widths <- grob$widths
  grob$widths[1] <- widths[3]
  grob$widths[3] <- widths[1]
  grob$vp[[1]]$layout$widths[1] <- widths[3]
  grob$vp[[1]]$layout$widths[3] <- widths[1]
  # revert the text
  grob$children[[1]]$hjust <- 1 - grob$children[[1]]$hjust # revert hjust
  grob$children[[1]]$vjust <- 1 - grob$children[[1]]$vjust # revert vjust
  grob$children[[1]]$x <- grid::unit(1, "npc") - grob$children[[1]]$x
  grob
}

# function that can vertically invert a title grob, with margins treated properly
# title grobs are used a lot in the new ggplot2 version (>1.0.1)
vinvert_title_grob <- function(grob)
{
  # fix the layout
  heights <- grob$heights
  grob$heights[1] <- heights[3]
  grob$heights[3] <- heights[1]
  grob$vp[[1]]$layout$heights[1] <- heights[3]
  grob$vp[[1]]$layout$heights[3] <- heights[1]
  # revert the text
  grob$children[[1]]$hjust <- 1 - grob$children[[1]]$hjust # revert hjust
  grob$children[[1]]$vjust <- 1 - grob$children[[1]]$vjust # revert vjust
  grob$children[[1]]$y <- grid::unit(1, "npc") - grob$children[[1]]$y
  grob
}

# first define functions that do the heavy lifting, `switch_yaxis_position()` and `switch_xaxis_position()`
switch_yaxis_position <- function(gt, theme, keep.original = FALSE)
{
  # locate panel
  pp <- gt$layout[gt$layout$name == "panel",]
  if (nrow(pp) != 1)
  {
    stop("Can only switch axes on plots with exactly one panel.")
  }

  # copy over ylab
  iyl <- which(gt$layout$name == "ylab")
  gyl <- gt$grobs[[iyl]]
  gyl <- hinvert_title_grob(gyl)
  g <- gtable::gtable_add_cols(gt, gt$widths[gt$layout[iyl, ]$l], pp$r)
  g <- gtable::gtable_add_grob(g, gyl, pp$t, pp$r+1, pp$b, pp$r+1, clip = "off", name="ylab-r")

  # axis tweaks
  ia <- which(gt$layout$name == "axis-l")
  ga <- gt$grobs[[ia]]

  # move vertical line to the left
  ga$children[[1]]$x <- grid::unit.c(grid::unit(0, "npc"), grid::unit(0, "npc"))

  # flip axis ticks and labels
  tick.length <- theme$axis.ticks.length
  aticks <- ga$children[[2]]
  aticks$widths <- rev(aticks$widths)
  aticks$grobs <- rev(aticks$grobs)
  # switch tick lines
  aticks$grobs[[1]]$x <- aticks$grobs[[1]]$x - grid::unit(1, "npc") + tick.length
  # switch tick labels
  aticks$grobs[[2]] <- hinvert_title_grob(aticks$grobs[[2]])
  ga$children[[2]] <- aticks

  # add right axis
  g <- gtable::gtable_add_cols(g, gt$widths[gt$layout[ia, ]$l], pp$r)
  g <- gtable::gtable_add_grob(g, ga, pp$t, pp$r+1, pp$b, pp$r+1, clip = "off", name = "axis-r")

  # remove left axis and ylab, squash corresponding columns
  if (!keep.original)
  {
    i <- g$layout[g$layout$name %in% c("ylab", "axis-l"),]
    g <- gtable_squash_cols(g, i$l)
    g <- gtable_remove_grobs(g, c("ylab", "axis-l"))
  }

  # return
  g
}

switch_xaxis_position <- function(gt, theme, keep.original = FALSE)
{

  # locate panel
  pp <- gt$layout[gt$layout$name == "panel",]
  if (nrow(pp) != 1)
  {
    stop("Can only switch axes on plots with exactly one panel.")
  }

  # copy over xlab
  ixl <- which(gt$layout$name == "xlab")
  gxl <- gt$grobs[[ixl]]
  gxl <- vinvert_title_grob(gxl)
  g <- gtable::gtable_add_rows(gt, gt$heights[gt$layout[ixl, ]$t], pp$t-1)
  g <- gtable::gtable_add_grob(g, gxl, pp$t, pp$l, pp$t, pp$r, clip = "off", name="xlab-t")

  # axis tweaks
  ia <- which(gt$layout$name == "axis-b")
  ga <- gt$grobs[[ia]]

  # move vertical line to the bottom
  ga$children[[1]]$y <- grid::unit.c(grid::unit(0, "npc"), grid::unit(0, "npc"))

  # flip axis ticks and labels
  tick.length <- theme$axis.ticks.length
  aticks <- ga$children[[2]]
  aticks$heights <- rev(aticks$heights)
  aticks$grobs <- rev(aticks$grobs)
  # switch tick lines
  aticks$grobs[[2]]$y <- aticks$grobs[[2]]$y - grid::unit(1, "npc") + tick.length
  # switch tick labels
  aticks$grobs[[1]] <- vinvert_title_grob(aticks$grobs[[1]])
  ga$children[[2]] <- aticks

  # add top axis
  g <- gtable::gtable_add_rows(g, gt$heights[gt$layout[ia, ]$t], pp$t)
  g <- gtable::gtable_add_grob(g, ga, pp$t+1, pp$l, pp$t+1, pp$r, clip = "off", name = "axis-t")

  # remove bottom axis and xlab, squash corresponding rows
  if (!keep.original)
  {
    i <- g$layout[g$layout$name %in% c("xlab", "axis-b"),]
    g <- gtable_squash_rows(g, i$t)
    g <- gtable_remove_grobs(g, c("xlab", "axis-b"))
  }

  # return
  g
}

#' Switches the axis position of the x or y axis in a ggplot2 plot.
#'
#' @param plot The plot on which to perform the operation.
#' @param axis String indicating which axis to switch. Valid options are"x", "y", and "xy".
#'      The default is "y".
#' @param keep String indicating which if any original axis to keep. Valid options
#'      are"x", "y", "xy", and "none". The default is "none".
#' @return A gtable object (not ggplot object!) on which the axes have been switched.
#' @examples
#' p <- ggplot(mtcars, aes(mpg, disp)) + geom_line(colour = "blue")
#' ggdraw(switch_axis_position(p, axis = 'y'))
#' ggdraw(switch_axis_position(p, axis = 'x'))
#' ggdraw(switch_axis_position(p + theme_bw(), axis = 'xy', keep = 'x'))
#' @export
switch_axis_position <- function(plot, axis = c('y', 'x', 'xy'), keep = c('none', 'x', 'y', 'xy', 'yx'))
{
  keep.x <- switch(keep[1],
                   x = TRUE,
                   y = FALSE,
                   xy = TRUE,
                   yx = TRUE,
                   FALSE
  )
  keep.y <- switch(keep[1],
                   x = FALSE,
                   y = TRUE,
                   xy = TRUE,
                   yx = TRUE,
                   FALSE
  )

  # extract gtable
  gt <- ggplot2::ggplotGrob(plot)
  # extract theme
  theme <- plot_theme(plot)

  result <- switch(axis[1],
                   x = switch_xaxis_position(gt, theme, keep.x),
                   y = switch_yaxis_position(gt, theme, keep.y),
                   switch_xaxis_position(
                            switch_yaxis_position(gt, theme, keep.y),
                            theme, keep.x)
  )
  result
}

#' Get theme of a ggplot2 plot
#' @param p The plot
#' @export
plot_theme <- function(p) {
  plyr::defaults(p$theme, ggplot2::theme_get())
}

