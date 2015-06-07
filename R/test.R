require(cowplot)
require(gridExtra)

#' Draw a grob.
#'
#' Places an arbitrary grob somewhere onto the drawing canvas. By default, coordinates run from
#' 0 to 1, and the point (0, 0) is in the lower left corner of the canvas.
#' @param grob The grob to place.
#' @param x The x location of the lower left corner of the grob.
#' @param y The y location of the lower left corner of the grob.
#' @param width Width of the grob.
#' @param height Height of the grob.
draw_grob <- function(grob, x = 0, y = 0, width = 1, height = 1){
  annotation_custom(grob, xmin = x, xmax = x+width, ymin = y, ymax = y+height)
}


#' Arrange multiple plots into a grid
#'
#' Arrange multiple plots into a grid.
#' @param ... List of plots to be arranged into the grid.
#' @param plotlist (optional) List of plots to display. Alternatively, the plots can be provided
#' individually as the first n arguments of the function plot_grid (see examples).
#' @param align (optional) Specifies whether graphs in the grid should be horizontally ("h") or
#'  vertically ("v") aligned. Options are "hv" (align in both directions), "h", "v", "none".
#' @param nrow (optional) Number of rows in the plot grid.
#' @param ncol (optional) Number of columns in the plot grid.
#' @param scale (optional) Allows to set an overall scaling of each sub-plot. Can be set separately for
#'              each subplot, by giving a vector of scale values, or at once for all subplots,
#'              by giving a single value.
#' @param labels (optional) List of labels to be added to the plots.
#' @param label_size (optional) Numerical value indicating the label size. Default is 14.
#' #' @param rows Deprecated. Like \code{nrow}.
#' @param cols Deprecated. Like \code{ncol}.
#' @examples
#' p1 <- qplot(1:10, 1:10)
#' p2 <- qplot(1:10, (1:10)^2)
#' p3 <- qplot(1:10, (1:10)^3)
#' p4 <- qplot(1:10, (1:10)^4)
#' plot_grid(p1, p2, p3, p4)
#' plot_grid(p1, p2, p3, p4, labels=c('A', 'B', 'C', 'D'))
#' plot_grid(p1, p2, p3, nrow=3, labels=c('A', 'B', 'C', 'D'), label_size=12)
#' plot_grid(p1, NULL, NULL, p2, p3, NULL, ncol=2,
#'  labels=c('A', 'B', 'C', 'D', 'E', 'F'), label_size=12)
plot_grid2 <- function(..., plotlist = NULL, align = c("hv", "h", "v", "none"),
                       nrow = NULL, ncol = NULL, scale = 1, labels = NULL,
                       label_size = 14, cols = NULL, rows = NULL ) {

  # Make a list from the ... arguments and plotlist
  plots <- c(list(...), plotlist)
  num_plots <- length(plots)

  # convert list of plots into list of grobs
  grobs <- lapply(plots, function(x) {if (!is.null(x)) ggplot2::ggplotGrob(x) else NULL})

  # aligning graphs.
  # calculate the maximum widths and heights over all graphs
  max_widths <- do.call(grid::unit.pmax, lapply(grobs, function(x){x$widths}))
  max_heights <- do.call(grid::unit.pmax, lapply(grobs, function(x){x$heights}))

  halign <- switch(align[1],
                      h = TRUE,
                      vh = TRUE,
                      hv = TRUE,
                      FALSE
                   )
  valign <- switch(align[1],
                   v = TRUE,
                   vh = TRUE,
                   hv = TRUE,
                   FALSE
  )

  # now assing to all graphs
  for ( i in 1:num_plots )
  {
    if (!is.null(grobs[[i]]))
    {
      if (valign) grobs[[i]]$widths <- max_widths
      if (halign) grobs[[i]]$heights <- max_heights
    }
  }

  if (!is.null(cols)){
    warning("Argument 'cols' is deprecated. Use 'ncol' instead.")
  }

  if (!is.null(rows)){
    warning("Argument 'rows' is deprecated. Use 'nrow' instead.")
  }

  # internally, this function operates with variables cols and rows instead of ncol and nrow
  if (!is.null(ncol)){
    cols <- ncol
  }
  if (!is.null(nrow)){
    rows <- nrow
  }

  # calculate grid dimensions
  if (is.null(cols) && is.null(rows)){
    # if neither rows nor cols are given, we make a square grid
    cols <- ceiling(sqrt(num_plots))
    rows <- ceiling(num_plots/cols)
  }
  # alternatively, we know at least how many rows or how many columns we need
  if (is.null(cols)) cols <- ceiling(num_plots/rows)
  if (is.null(rows)) rows <- ceiling(num_plots/cols)

  # in general, we allow for separate scale values for each graph
  if (length(scale)==1)
    scale <- rep(scale, num_plots)

  # now place all the plots
  p <- ggdraw() # start with nothing
  col_count <- 0
  row_count <- 1
  x_delta <- 1/cols
  y_delta <- 1/rows
  for (i in 1:(rows*cols)){
    if (i > num_plots) break

    # calculate width, offset, etc
    width <- x_delta * scale[i]
    height <- y_delta * scale[i]
    x_off <- (x_delta - width)/2
    y_off <- (y_delta - height)/2
    x <- col_count * x_delta + x_off
    y <- (rows - row_count) * y_delta + y_off

    # place the plot
    p_next <- grobs[[i]]
    if (!is.null(p_next)){
      p <- p + draw_grob(grid::grobTree(p_next), x, y, width, height)
    }
    # place a label if we have one
    if (i <= length(labels)){
      p <- p + draw_plot_label(labels[i], x, y + height, size=label_size)
    }
    # move on to next grid position
    col_count <- col_count + 1
    if (col_count >= cols){
      col_count <- 0
      row_count <- row_count + 1
    }
  }
  p
}



if (F)
{
  p1 <- qplot(1:10, 1:10)
  p2 <- qplot(1:10, (1:10)^2)
  p3 <- qplot(1:10, (1:10)^3)
  p4 <- qplot(1:10, (1:10)^4)
  plot_grid2(p1, p2, p3, p4)


  plot_grid2(p1, NULL, NULL, p2, p3, NULL, ncol=2,
            labels=c('A', 'B', 'C', 'D', 'E', 'F'), label_size=12)
}
