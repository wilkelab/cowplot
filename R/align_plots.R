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
#'  "first" aligns top margin and "last" aligns bottom margin.
#' @examples
#' library(ggplot2)
#' theme_set(theme_half_open())
#'
#' # Example for how to utilize, though align_plots() does this internally and automatically
#' p1 <- qplot(1:10, 1:10)
#' p2 <- qplot(1:10, (1:10)^2)
#' p3 <- qplot(1:10, (1:10)^3)
#' plots <- list(p1, p2, p3)
#' grobs <- lapply(plots, ggplot2::ggplotGrob)
#' plot_widths <- lapply(grobs, function(x) {x$widths})
#' # Aligning the left margins of all plots
#' aligned_widths <- align_margin(plot_widths, "first")
#' # Aligning the right margins of all plots as well
#' aligned_widths <- align_margin(plot_widths, "last")
#' # Setting the dimensions of plots to the aligned dimensions
#' for (i in 1:3) {
#'   plots[[i]]$widths <- aligned_widths[[i]]
#' }
#' @keywords internal
#' @export
align_margin <- function(sizes, margin_to_align) {

  # finds the indices being aligned for each of the plots
  # "first" aligns all lengths up to but excluding the first "null"; "last" aligns all lengths past the first "null"
  list_indices <- switch(
    margin_to_align,
    first = lapply(sizes, function(x) 1:(grep("null", x)[1] - 1)),
    last = lapply(sizes, function(x) (grep("null", x)[length(grep("null", x))] + 1):length(x)),
    stop("Invalid margin input, should be either 'first' or 'last'")
  )

  # Either 1 or length of the sizes for each plot, but used for flexible case handling
  extreme_margin <- switch(
    margin_to_align,
    first = lapply(sizes, function(x) 1),
    last = lapply(sizes, function(x) length(x))
  )

  grob_seq <- seq_along(list_indices)
  num <- unique(unlist(lapply(list_indices, function(x) length(x))))
  num[num == 0] <- NULL # remove entry for missing graphs

  # Align if different number of items in margin
  if (length(num) > 1) {
    margins <- lapply(grob_seq, function(x) {sum(sizes[[x]][list_indices[[x]]])})
    largest_margin <- max(do.call(grid::unit.c, margins))
    # For each grob, make the width of the first one equal to
    lapply(grob_seq, function(x) {
      sizes[[x]][extreme_margin[[x]]] <- largest_margin - sum(sizes[[x]][list_indices[[x]][which(list_indices[[x]] != extreme_margin[[x]])] ])
      sizes[[x]]
    })
    # Align if left margin has same number of items
  } else{
    # If margins have same number of items, then make all the same length
    max_margins <- do.call(grid::unit.pmax, lapply(grob_seq, function(x) sizes[[x]][list_indices[[x]]]))
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
#' library(ggplot2)
#'
#'p1 <- ggplot(mpg, aes(manufacturer, hwy)) + stat_summary(fun.y="median", geom = "bar") +
#'        theme_half_open() +
#'        theme(axis.text.x = element_text(angle = 45, hjust = 1, vjust= 1))
#'p2 <- ggplot(mpg, aes(manufacturer, displ)) + geom_point(color="red") +
#'  scale_y_continuous(position = "right") +
#'  theme_half_open() + theme(axis.text.x = element_blank())
#'
#' # manually align and plot on top of each other
#'aligned_plots <- align_plots(p1, p2, align="hv", axis="tblr")
#'
#' # Note: In most cases two y-axes should not be used, but this example
#' # illustrates how one could accomplish it.
#'ggdraw(aligned_plots[[1]]) + draw_plot(aligned_plots[[2]])
#' @export
align_plots <- function(..., plotlist = NULL, align = c("none", "h", "v", "hv"), axis = c("none", "l", "r", "t", "b", "lr", "tb", "tblr")){
  # browser()
  plots <- c(list(...), plotlist)
  num_plots <- length(plots)

  # convert list of plots into list of grobs / gtables
  grobs <- lapply(plots, function(x) {if (!is.null(x)) as_gtable(x) else NULL})

  #aligning graphs.
  halign <- switch(
    align[1],
    h = TRUE,
    vh = TRUE,
    hv = TRUE,
    FALSE
  )
  valign <- switch(
    align[1],
    v = TRUE,
    vh = TRUE,
    hv = TRUE,
    FALSE
  )

  vcomplex_align <- hcomplex_align <- FALSE
  # calculate the maximum widths and heights over all graphs, and find out whether
  # they can be aligned if necessary
  if (valign) {
    num_widths <- unique(lapply(grobs, function(x) {length(x$widths)})) # count number of unique lengths
    num_widths[num_widths==0] <- NULL # remove entry for missing graphs
    if (length(num_widths) > 1) {
      # Complex aligns are ones that don't have the same number of elements that have sizes
      vcomplex_align = TRUE
      if(axis[1] == "none") {
        warning("Complex graphs cannot be vertically aligned unless axis parameter is set properly. Placing graphs unaligned.")
        valign=FALSE
      }

      max_widths <- lapply(grobs, function(x) {x$widths})
      #
      # Aligning the Left margins
      if (length(grep("l", axis[1])) > 0) {
        max_widths <- align_margin(max_widths, "first")
      }
      if (length(grep("r", axis[1])) > 0) {
        max_widths <- align_margin(max_widths, "last")
      }
    } else {
      max_widths <- list(do.call(grid::unit.pmax, lapply(grobs, function(x){x$widths})))
    }
  }

  if (halign) {
    num_heights <- unique(lapply(grobs, function(x) {length(x$heights)})) # count number of unique lengths
    num_heights[num_heights==0] <- NULL # remove entry for missing graphs
    if (length(num_heights) > 1) {
      # Complex aligns are ones that don't have the same number of elements that have sizes
      hcomplex_align = TRUE
      if(axis[1] == "none"){
        warning("Graphs cannot be horizontally aligned, unless axis parameter set. Placing graphs unaligned.")
        halign=FALSE
      }

      max_heights <- lapply(grobs, function(x) {x$heights})

      if (length(grep("t", axis[1])) > 0) {
        max_heights <- align_margin(max_heights, "first")
      }
      if (length(grep("b", axis[1])) > 0) {
        max_heights <- align_margin(max_heights, "last")
      }

    } else {
      max_heights <- list(do.call(grid::unit.pmax, lapply(grobs, function(x){x$heights})))
    }
  }

  # now assign to all graphs
  for (i in 1:num_plots) {
    if (!is.null(grobs[[i]])) {
      if (valign) {
        if(vcomplex_align) {
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
