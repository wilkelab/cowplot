
#' Arrange multiple plots into a grid
#'
#' Arrange multiple plots into a grid.
#' @param ... List of plots to be arranged into the grid. The plots can be either ggplot2 plot objects
#'              or arbitrary gtables.
#' @param plotlist (optional) List of plots to display. Alternatively, the plots can be provided
#' individually as the first n arguments of the function plot_grid (see examples).
#' @param align (optional) Specifies whether graphs in the grid should be horizontally ("h") or
#'  vertically ("v") aligned. Options are "none" (default), "hv" (align in both directions), "h", and "v".
#' @param nrow (optional) Number of rows in the plot grid.
#' @param ncol (optional) Number of columns in the plot grid.
#' @param scale (optional) Allows to set an overall scaling of each sub-plot. Can be set separately for
#'              each subplot, by giving a vector of scale values, or at once for all subplots,
#'              by giving a single value.
#' @param rel_widths (optional) Numerical vector of relative columns widths. For example, in a two-column
#'              grid, \code{rel_widths = c(2, 1)} would make the first column twice as wide as the
#'              second column.
#' @param rel_heights (optional) Numerical vector of relative columns heights. Works just as
#'              \code{rel_widths} does, but for rows rather than columns.
#' @param labels (optional) List of labels to be added to the plots. You can also set \code{labels="AUTO"} to
#'              auto-generate upper-case labels or \code{labels="auto"} to auto-generate lower-case labels.
#' @param label_size (optional) Numerical value indicating the label size. Default is 14.
#' @param hjust Adjusts the horizontal position of each label. More negative values move the label further
#'              to the right on the plot canvas. Default is -0.5.
#' @param vjust Adjusts the vertical position of each label. More positive values move the label further
#'              down on the plot canvas. Default is 1.5.
#' @param rows Deprecated. Like \code{nrow}.
#' @param cols Deprecated. Like \code{ncol}.
#' @examples
#' p1 <- qplot(1:10, 1:10)
#' p2 <- qplot(1:10, (1:10)^2)
#' p3 <- qplot(1:10, (1:10)^3)
#' p4 <- qplot(1:10, (1:10)^4)
#' # simple grid
#' plot_grid(p1, p2, p3, p4)
#' # simple grid with labels and aligned plots
#' plot_grid(p1, p2, p3, p4, labels=c('A', 'B', 'C', 'D'), align="hv")
#' # manually setting the number of rows, auto-generate upper-case labels
#' plot_grid(p1, p2, p3, nrow=3, labels="AUTO", label_size=12, align="v")
#' # missing plots in some grid locations, auto-generate lower-case labels
#' plot_grid(p1, NULL, NULL, p2, p3, NULL, ncol=2,
#'  labels="auto", label_size=12, align="v")
#' # making rows and columns of different widths/heights
#' plot_grid(p1, p2, p3, p4, align='hv', rel_heights=c(2,1), rel_widths=c(1,2))
#' @export
plot_grid <- function(..., plotlist = NULL, align = c("none", "h", "v", "hv"),
                      nrow = NULL, ncol = NULL, scale = 1, rel_widths = 1,
                      rel_heights = 1, labels = NULL, label_size = 14,
                      hjust = -0.5, vjust = 1.5,
                      cols = NULL, rows = NULL ) {

  # Make a list from the ... arguments and plotlist
  plots <- c(list(...), plotlist)
  num_plots <- length(plots)

  # convert list of plots into list of grobs / gtables
  grobs <- lapply(plots, function(x) {if (!is.null(x)) ggplot_to_gtable(x) else NULL})


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


  #aligning graphs.
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

  # calculate the maximum widths and heights over all graphs, and find out whether
  # they can be aligned if necessary
  if (valign)
  {
    num_widths <- unique(lapply(grobs, function(x){length(x$widths)})) # count number of unique lengths
    num_widths[num_widths==0] <- NULL # remove entry for missing graphs
    if (length(num_widths) > 1)
    {
      valign = FALSE
      warning("Graphs cannot be vertically aligned. Placing graphs unaligned.")
    }
    else
    {
      max_widths <- do.call(grid::unit.pmax, lapply(grobs, function(x){x$widths}))
    }
  }

  if (halign)
  {
    num_heights <- unique(lapply(grobs, function(x){length(x$heights)})) # count number of unique lengths
    num_heights[num_heights==0] <- NULL # remove entry for missing graphs
    if (length(num_heights) > 1)
    {
      halign = FALSE
      warning("Graphs cannot be horizontally aligned. Placing graphs unaligned.")
    }
    else
    {
      max_heights <- do.call(grid::unit.pmax, lapply(grobs, function(x){x$heights}))
    }
  }

  # now assing to all graphs
  for ( i in 1:num_plots )
  {
    if (!is.null(grobs[[i]]))
    {
      if (valign) grobs[[i]]$widths <- max_widths
      if (halign) grobs[[i]]$heights <- max_heights
    }
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

  if ("AUTO" %in% labels)
    labels <- LETTERS[1:num_plots]
  else if ("auto" %in% labels)
    labels <- letters[1:num_plots]

  # we also allow for separate hjust and vjust values for each label
  if (length(hjust)==1)
    hjust <- rep(hjust, length(labels))

  if (length(vjust)==1)
    vjust <- rep(vjust, length(labels))

  # calculate appropriate vectors of rel. heights and widths
  rel_heights <- rep(rel_heights, length.out = rows)
  rel_widths <- rep(rel_widths, length.out = cols)
  # calculate the appropriate coordinates and deltas for each row and column
  x_deltas <- rel_widths/sum(rel_widths)
  y_deltas <- rel_heights/sum(rel_heights)
  xs <- cumsum(rel_widths)/sum(rel_widths) - x_deltas
  ys <- 1 - cumsum(rel_heights)/sum(rel_heights)

  # now place all the plots
  p <- ggdraw() # start with nothing
  col_count <- 0
  row_count <- 1
  for (i in 1:(rows*cols)){
    if (i > num_plots) break

    x_delta <- x_deltas[col_count+1]
    y_delta <- y_deltas[row_count]
    # calculate width, offset, etc
    width <- x_delta * scale[i]
    height <- y_delta * scale[i]
    x_off <- (x_delta - width)/2
    y_off <- (y_delta - height)/2
    x <- xs[col_count+1] + x_off
    y <- ys[row_count] + y_off

    # place the plot
    p_next <- grobs[[i]]
    if (!is.null(p_next)){
      p <- p + draw_grob(grid::grobTree(p_next), x, y, width, height)
    }
    # place a label if we have one
    if (i <= length(labels)){
      p <- p + draw_plot_label(labels[i], x - x_off, y + height - y_off, size = label_size,
                               hjust = hjust[i], vjust = vjust[i])
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
