
#' Align multiple plots along a specified margin
#'
#' The function aligns the dimensions of multiple plots along a specified axis, and is solely a helper function
#' for [align_plots()] to reduce redundancy. Each element of the \code{sizes}
#' list corresponds to the dimensions of a plot being aligned. They should be vectors created from calls to
#' \code{grob$heights} or \code{grob$widths} depending on whether you are aligning vertically or horizontally.
#' The list of dimensions is generated automatically by the [align_plots()] function, but see examples.
#' If the same number of elements exist for all plots for the specified
#' margin, the function will align individual elements on the margin. Otherwise, it aligns the plot by adding
#' white space to plot margins so that all margins have the same dimensions.
#'
#' @param sizes list of dimensions for each plot being aligned. Each element of list
#'  obtained by a call to \code{grob$heights} or \code{grob$widths} (see example).
#' @param margin_to_align string either "first" or "last" for which part of plot area should be aligned.
#'  If vertically aligning, "first" aligns left margin and "last" aligns right margin. If horizontally aligning
#'  "first" aligns top margin and "last" aligns bottom margin
#' @examples
#' # Example for how to utilize, though align_plots() does this internally and automatically
#' p1 <- qplot(1:10, 1:10)
#' p2 <- qplot(1:10, (1:10)^2)
#' p3 <- qplot(1:10, (1:10)^3)
#' plots <- list(p1, p2, p3)
#' grobs <- lapply(plots, ggplot2::ggplotGrob)
#' plot_widths <- lapply(grobs, function(x){x$widths})
#' # Aligning the Left margins of all plots
#' aligned_widths <- align_margin(plot_widths, "first")
#' # Aligning the right margins of all plots as well
#' aligned_widths <- align_margin(plot_widths, "last")
#' # Setting the dimensions of plots to the aligned dimensions
#' for(i in 1:3){
#'    plots[[i]]$widths <- aligned_widths[[i]]
#' }
#' @export

align_margin <- function(sizes, margin_to_align) {

  # finds the indices being aligned for each of the plots
  list_indices <- switch(margin_to_align,
                            first = lapply(sizes, function(x) 1:(grep("null", x)[1]-1)),
                            last = lapply(sizes, function(x) (grep("null", x)[length(grep("null", x))]+1):length(x)),
                            stop("Invalid margin input, should be either 'first' or 'last'"))

  # Either 1 or length of the sizes for each plot, but used for flexible case handling
  extreme_margin <- switch(margin_to_align,
                           first = lapply(sizes, function(x) 1),
                           last = lapply(sizes, function(x) length(x)))

  grob_seq <- seq_along(list_indices)
  num <- unique(unlist(lapply(list_indices, function(x) length(x))))
  num[num==0] <- NULL # remove entry for missing graphs

  # Align if different number of items in margin
  if(length(num) > 1){
    margins <- lapply(grob_seq, function(x) {sum(sizes[[x]][list_indices[[x]]])})
    largest_margin <- max(do.call(grid::unit.c, margins))
    # For each grob, make the width of the first one equal to
    lapply(grob_seq, function(x){
      sizes[[x]][extreme_margin[[x]]]  <- largest_margin - sum(sizes[[x]][list_indices[[x]][which(list_indices[[x]] != extreme_margin[[x]])] ])
      sizes[[x]]
    })
    # Align if left margin has same number of items
  } else{
    # If margins have same number of items, then make all the same length
    max_margins <- do.call(grid::unit.pmax, lapply(grob_seq, function(x) sizes[[x]][list_indices[[x]]] ))
    lapply(grob_seq, function(x){
      sizes[[x]][list_indices[[x]]] <- max_margins
      sizes[[x]]
    })
  }
}


#' Align multiple plots vertically and/or horizontally
#'
#' Align the plot area of multiple plots. Inputs are a list of plots plus alignment parameters.
#' Horizontal or vertical alignment or both are possible. In the simplest case the function will align all
#' elements of each plot, but it can handle more complex cases as long as the axis parameter is defined. In this case,
#' alignment is done through a call to [align_margin()]. The function `align_plots` is called by the [plot_grid()] function
#' and is usually not called directly, though direct calling of the function is useful if plots with
#' multiple y-axes are desired (see example).
#'
#' @param ... List of plots to be aligned.
#' @param plotlist (optional) List of plots to display. Alternatively, the plots can be provided
#'  individually as the first n arguments of the function align_plots (see plot_grid examples).
#' @param align (optional) Specifies whether graphs in the grid should be horizontally ("h") or
#'  vertically ("v") aligned. Options are \code{align="none"} (default), "hv" (align in both directions), "h", and "v".
#' @param axis (optional) Specifies whether graphs should be aligned by the left ("l"), right ("r"), top ("t"), or bottom ("b")
#'  margins. Options are \code{axis="none"} (default), or a string of any combination of "l", "r", "t", and/or "b" in any order
#'  (e.g. \code{axis="tblr"} or \code{axis="rlbt"} for aligning all margins)
#' @examples
#'p1 <- ggplot(mpg, aes(manufacturer, hwy)) + stat_summary(fun.y="median", geom = "bar") +
#'          theme(axis.text.x = element_text(angle = 45, hjust = 1, vjust= 1))
#'p2 <- ggplot(mpg, aes(manufacturer, displ)) + geom_point(color="red") +
#'  scale_y_continuous(position = "right") +
#'  theme(axis.text.x = element_blank())
#' # manually align and plot on top of each other
#'aligned_plots <- align_plots(p1, p2, align="hv", axis="tblr")
#' # Note: In most cases two y-axes should not be used, but this example
#' # illustrates how one would could accomplish it.
#'ggdraw(aligned_plots[[1]]) +draw_plot(aligned_plots[[2]])
#' @export
align_plots <- function(..., plotlist = NULL, align = c("none", "h", "v", "hv"), axis = c("none", "l", "r", "t", "b", "lr", "tb", "tblr")){
  # browser()
  plots <- c(list(...), plotlist)
  num_plots <- length(plots)

  # convert list of plots into list of grobs / gtables
  grobs <- lapply(plots, function(x) {if (!is.null(x)) plot_to_gtable(x) else NULL})


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

  vcomplex_align <- hcomplex_align <- FALSE
  # calculate the maximum widths and heights over all graphs, and find out whether
  # they can be aligned if necessary
  if (valign)
  {
    num_widths <- unique(lapply(grobs, function(x){length(x$widths)})) # count number of unique lengths
    num_widths[num_widths==0] <- NULL # remove entry for missing graphs
    if (length(num_widths) > 1) {
      # Complex aligns are ones that don't have the same number of elements that have sizes
      vcomplex_align = TRUE
      if(axis[1] == "none"){
        warning("Complex graphs cannot be vertically aligned unless axis parameter is set properly. Placing graphs unaligned.")
        valign=FALSE
      }

      max_widths <- lapply(grobs, function(x){x$widths})
      #
      # Aligning the Left margins
      if(length(grep("l", axis[1])) > 0) {
        max_widths <- align_margin(max_widths, "first")
      }
      if(length(grep("r", axis[1])) > 0){
        max_widths <- align_margin(max_widths, "last")
      }

    } else {
      max_widths <- list(do.call(grid::unit.pmax, lapply(grobs, function(x){x$widths})))
    }
  }

  if (halign)
  {
    num_heights <- unique(lapply(grobs, function(x){length(x$heights)})) # count number of unique lengths
    num_heights[num_heights==0] <- NULL # remove entry for missing graphs
    if (length(num_heights) > 1) {
      # Complex aligns are ones that don't have the same number of elements that have sizes
      hcomplex_align = TRUE
      if(axis[1] == "none"){
        warning("Graphs cannot be horizontally aligned, unless axis parameter set. Placing graphs unaligned.")
        halign=FALSE
      }

      max_heights <- lapply(grobs, function(x){x$heights})

      if(length(grep("t", axis[1])) > 0){

        max_heights <- align_margin(max_heights, "first")
      }
      if(length(grep("b", axis[1])) > 0) {

        max_heights <- align_margin(max_heights, "last")
      }

    } else {
      max_heights <- list(do.call(grid::unit.pmax, lapply(grobs, function(x){x$heights})))
    }
  }

  # now assign to all graphs
  for ( i in 1:num_plots )
  {
    if (!is.null(grobs[[i]]))
    {

      if (valign) {
        if(vcomplex_align){
          grobs[[i]]$widths <- max_widths[[i]]
        } else{
          grobs[[i]]$widths <- max_widths[[1]]
        }
      }
      if (halign) {
        if(hcomplex_align){
          grobs[[i]]$heights <- max_heights[[i]]
        } else{
          grobs[[i]]$heights <- max_heights[[1]]
        }
      }

    }
  }
  grobs
}




#' Arrange multiple plots into a grid
#'
#' Arrange multiple plots into a grid.
#' @param ... List of plots to be arranged into the grid. The plots can be any objects that
#'   the function [plot_to_gtable()] can handle (see also examples).
#' @param plotlist (optional) List of plots to display. Alternatively, the plots can be provided
#' individually as the first n arguments of the function plot_grid (see examples).
#' @param align (optional) Specifies whether graphs in the grid should be horizontally ("h") or
#'  vertically ("v") aligned. Options are "none" (default), "hv" (align in both directions), "h", and "v".
#' @param axis (optional) Specifies whether graphs should be aligned by the left ("l"), right ("r"), top ("t"), or bottom ("b")
#'  margins. Options are "none" (default), or a string of any combination of l, r, t, and b in any order (e.g. "tblr" or "rlbt" for aligning all margins).
#'  Must be specified if any of the graphs are complex (e.g. faceted) and alignment is specified and desired. See [align_plots()] for details.
#' @param nrow (optional) Number of rows in the plot grid.
#' @param ncol (optional) Number of columns in the plot grid.
#' @param rel_widths (optional) Numerical vector of relative columns widths. For example, in a two-column
#'              grid, \code{rel_widths = c(2, 1)} would make the first column twice as wide as the
#'              second column.
#' @param rel_heights (optional) Numerical vector of relative columns heights. Works just as
#'              \code{rel_widths} does, but for rows rather than columns.
#' @param labels (optional) List of labels to be added to the plots. You can also set \code{labels="AUTO"} to
#'              auto-generate upper-case labels or \code{labels="auto"} to auto-generate lower-case labels.
#' @param label_size (optional) Numerical value indicating the label size. Default is 14.
#' @param label_fontfamily (optional) Font family of the plot labels. If not provided, is taken from the current theme.
#' @param label_fontface (optional) Font face of the plot labels. Default is "bold".
#' @param label_colour (optional) Color of the plot labels. If not provided, is taken from the current theme.
#' @param label_x (optional) Single value or vector of x positions for plot labels, relative to each subplot.
#'   Defaults to 0 for all labels. (Each label is placed all the way to the left of each plot.)
#' @param label_y (optional) Single value or vector of y positions for plot labels, relative to each subplot.
#'   Defaults to 1 for all labels. (Each label is placed all the way to the top of each plot.)
#' @param hjust Adjusts the horizontal position of each label. More negative values move the label further
#'   to the right on the plot canvas. Can be a single value (applied to all labels) or a vector of values
#'   (one for each label). Default is -0.5.
#' @param vjust Adjusts the vertical position of each label. More positive values move the label further
#'   down on the plot canvas. Can be a single value (applied to all labels) or a vector of values
#'   (one for each label). Default is 1.5.
#' @param scale Individual number or vector of numbers greater than 0. Enables you to scale the size of all or
#'   select plots. Usually it's preferable to set margins instead of using `scale`, but `scale` can
#'   sometimes be more powerful.
#' @param rows Deprecated. Use \code{nrow}.
#' @param cols Deprecated. Use \code{ncol}.
#' @examples
#' p1 <- qplot(1:10, 1:10)
#' p2 <- qplot(1:10, (1:10)^2)
#' p3 <- qplot(1:10, (1:10)^3)
#' p4 <- qplot(1:10, (1:10)^4)
#' p5 <- ggplot(mpg, aes(as.factor(year), hwy)) +
#'         geom_boxplot() +
#'         facet_wrap(~class, scales = "free_y")
#' # simple grid
#' plot_grid(p1, p2, p3, p4)
#'
#' # simple grid with labels and aligned plots
#' plot_grid(p1, p2, p3, p4, labels=c('A', 'B', 'C', 'D'), align="hv")
#'
#' # manually setting the number of rows, auto-generate upper-case labels
#' plot_grid(p1, p2, p3, nrow=3, labels="AUTO", label_size=12, align="v")
#'
#' # making rows and columns of different widths/heights
#' plot_grid(p1, p2, p3, p4, align='hv', rel_heights=c(2,1), rel_widths=c(1,2))
#'
#' # aligning complex plots in a grid
#' plot_grid(p1, p5, align="h", axis="b", nrow = 1, rel_widths = c(1,2))
#'
#' # more examples
#' \donttest{
#' #' # missing plots in some grid locations, auto-generate lower-case labels
#' plot_grid(p1, NULL, NULL, p2, p3, NULL, ncol=2,
#'  labels="auto", label_size=12, align="v")
#'
#' # can align top of plotting area as well as bottom
#' plot_grid(p1, p5, align="h", axis="tb", nrow = 1, rel_widths = c(1,2))
#'
#' # other types of plots not generated with ggplot
#' dev.new()
#' par(xpd = NA, # switch off clipping, necessary to always see axis labels
#'     bg = "transparent", # switch off background to avoid obscuring adjacent plots
#'     oma = c(2, 2, 0, 0), # move plot to the right and up
#'     mgp = c(2, 1, 0) # move axis labels closer to axis
#' )
#' plot(sqrt)
#' p6 <- recordPlot()
#' dev.off()
#' p7 <- function() image(volcano)
#' p8 <- grid::circleGrob()
#'
#' plot_grid(p1, p6, p7, p8, labels = "AUTO", scale = c(1, 1, .85, .9))
#' }
#' @export
plot_grid <- function(..., plotlist = NULL, align = c("none", "h", "v", "hv"),
                      axis = c("none", "l", "r", "t", "b", "lr", "tb", "tblr"),
                      nrow = NULL, ncol = NULL, rel_widths = 1,
                      rel_heights = 1, labels = NULL, label_size = 14,
                      label_fontfamily = NULL, label_fontface = "bold", label_colour = NULL,
                      label_x = 0, label_y = 1,
                      hjust = -0.5, vjust = 1.5, scale = 1.,
                      cols = NULL, rows = NULL ) {

  # Make a list from the ... arguments and plotlist
  plots <- c(list(...), plotlist)
  num_plots <- length(plots)

  if (!is.null(cols)){
    warning("Argument 'cols' is deprecated. Use 'ncol' instead.")
  }

  if (!is.null(rows)){
    warning("Argument 'rows' is deprecated. Use 'nrow' instead.")
  }

  scale <- rep_len(scale, num_plots)
  if (sum(scale <= 0) > 1){
    stop("Argument 'scale' needs to be greater than 0.")
  }

  # internally, this function operates with variables cols and rows instead of ncol and nrow
  if (!is.null(ncol)){
    cols <- ncol
  }
  if (!is.null(nrow)){
    rows <- nrow
  }

  # Align the plots (if specified)
  grobs <- align_plots(plotlist = plots, align=align, axis=axis)

  # calculate grid dimensions
  if (is.null(cols) && is.null(rows)){
    # if neither rows nor cols are given, we make a square grid
    cols <- ceiling(sqrt(num_plots))
    rows <- ceiling(num_plots/cols)
  }
  # alternatively, we know at least how many rows or how many columns we need
  if (is.null(cols)) cols <- ceiling(num_plots/rows)
  if (is.null(rows)) rows <- ceiling(num_plots/cols)

  if ("AUTO" %in% labels)
    labels <- LETTERS[1:num_plots]
  else if ("auto" %in% labels)
    labels <- letters[1:num_plots]

  # label adjustments can be provided globally for all labels
  # or individually for each label
  hjust <- rep_len(hjust, length(labels))
  vjust <- rep_len(vjust, length(labels))
  label_x <- rep_len(label_x, length(labels))
  label_y <- rep_len(label_y, length(labels))

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
    x <- xs[col_count+1]
    y <- ys[row_count]

    # place the plot
    p_next <- grobs[[i]]
    if (!is.null(p_next)){
      p <- p + draw_grob(p_next, x, y, x_delta, y_delta, scale[i])
    }
    # place a label if we have one
    if (i <= length(labels)){
      p <- p + draw_plot_label(labels[i], x + label_x[i]*x_delta, y + label_y[i]*y_delta, size = label_size,
                               family = label_fontfamily, fontface = label_fontface, colour = label_colour,
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
