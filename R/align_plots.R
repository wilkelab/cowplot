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
#' @param greedy if `TRUE`, alignment is always achieved by adjusting the most extreme
#'   margin; if `FALSE`, and the number of dimensions for each plot are the same, then
#'   all dimensions are jointly adjusted.
#' @examples
#' library(ggplot2)
#'
#' # Example for how to utilize, though align_plots() does this internally and automatically
#' df <- data.frame(
#'   x = 1:10, y1 = 1:10, y2 = (1:10)^2, y3 = (1:10)^3
#' )
#'
#' p1 <- ggplot(df, aes(x, y1)) + geom_point()
#' p2 <- ggplot(df, aes(x, y2)) + geom_point()
#' p3 <- ggplot(df, aes(x, y3)) + geom_point()
#' plots <- list(p1, p2, p3)
#' grobs <- lapply(plots, as_grob)
#' plot_widths <- lapply(grobs, function(x) {x$widths})
#' # Aligning the left margins of all plots
#' aligned_widths <- align_margin(plot_widths, "first")
#' # Aligning the right margins of all plots as well
#' aligned_widths <- align_margin(aligned_widths, "last")
#' # Setting the dimensions of plots to the aligned dimensions
#' for (i in seq_along(plots)) {
#'   grobs[[i]]$widths <- aligned_widths[[i]]
#' }
#' # Draw aligned plots
#' plot_grid(plotlist = grobs, ncol = 1)
#' @keywords internal
#' @export
align_margin <- function(sizes, margin_to_align, greedy = TRUE) {

  # finds the indices being aligned for each of the plots
  # "first" aligns all lengths up to but excluding the first "null"; "last" aligns all lengths past the first "null"
  list_indices <- switch(
    margin_to_align,
    first = lapply(
      sizes,
      function(x) {
        # find all positions of unit NULL
        null_idx <- grep("null$", x)
        # if there are none, abort
        if (length(null_idx) < 1) {
          return(NULL)
        }
        # if the first is already a NULL, abort
        first_null_idx <- null_idx[1]
        if (first_null_idx < 2) {
          return(NULL)
        }
        1:(first_null_idx - 1)
      }
    ),
    last = lapply(
      sizes,
      function(x) {
        # find all positions of unit NULL
        null_idx <- grep("null$", x)
        # if there are none, abort
        if (length(null_idx) < 1) {
          return(NULL)
        }
        # if the last is already a NULL, abort
        last_null_idx <- null_idx[length(null_idx)]
        if (last_null_idx == length(x)) {
          return(NULL)
        }
        (last_null_idx + 1):length(x)
      }
    ),
    stop("Invalid margin input, should be either 'first' or 'last'")
  )

  # Either 1 or length of the sizes for each plot, but used for flexible case handling
  extreme_margin <- switch(
    margin_to_align,
    first = lapply(sizes, function(x) 1),
    last = lapply(sizes, function(x) length(x))
  )

  # create a sequence of indices along the list of plots
  grob_seq <- seq_along(list_indices)
  # create a list of plots to exclude from alignment
  grob_exclude <- which(vapply(list_indices, is.null, logical(1)))
  # find number of distinct lengths
  num <- unique(vapply(list_indices, length, numeric(1)))
  num <- num[num != 0] # remove entry for missing/unalignable graphs

  if (greedy || length(num) > 1) { # Align if different number of items in margin
    margins <- lapply(
      grob_seq,
      function(x) {
        if (!x %in% grob_exclude) {
          sum(sizes[[x]][list_indices[[x]] ])
        } else {
          grid::unit(0, "pt")
        }
      }
    )
    largest_margin <- max(do.call(grid::unit.c, margins))
    # For each grob, make the size of the extreme margin equal to the largest margin minus the sum of the remaining margins
    lapply(
      grob_seq,
      function(x) {
        if (!x %in% grob_exclude) {
          sizes[[x]][extreme_margin[[x]] ] <-
            largest_margin - sum(sizes[[x]][list_indices[[x]][which(list_indices[[x]] != extreme_margin[[x]])] ])
        }
        sizes[[x]]
      }
    )
  } else{ # If margins have same number of items, then make all the same length
    grob_seq_nonex <- grob_seq[!grob_seq %in% grob_exclude]
    max_margins <- do.call(grid::unit.pmax, lapply(grob_seq_nonex, function(x) sizes[[x]][list_indices[[x]] ]))
    lapply(
      grob_seq,
      function(x) {
        if (!x %in% grob_exclude) {
          sizes[[x]][list_indices[[x]] ] <- max_margins
        }
        sizes[[x]]
      }
    )
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
#' @param greedy (optional) Defines the alignment policy when alignment axes are specified via the
#'  `axis` option. `greedy = TRUE` tries to always align by adjusting the outmost margin. `greedy = FALSE`
#'  aligns all columns/rows in the gtable if possible.
#' @examples
#' library(ggplot2)
#'
#' p1 <- ggplot(mpg, aes(manufacturer, hwy)) + stat_summary(fun.y="median", geom = "bar") +
#'   theme_half_open() +
#'   theme(axis.text.x = element_text(angle = 45, hjust = 1, vjust= 1))
#' p2 <- ggplot(mpg, aes(manufacturer, displ)) + geom_point(color="red") +
#'   scale_y_continuous(position = "right") +
#'   theme_half_open() + theme(axis.text.x = element_blank())
#'
#' # manually align and plot on top of each other
#' aligned_plots <- align_plots(p1, p2, align="hv", axis="tblr")
#'
#' # Note: In most cases two y-axes should not be used, but this example
#' # illustrates how one could accomplish it.
#' ggdraw(aligned_plots[[1]]) + draw_plot(aligned_plots[[2]])
#' @export
align_plots <- function(..., plotlist = NULL, align = c("none", "h", "v", "hv"),
                        axis = c("none", "l", "r", "t", "b", "lr", "tb", "tblr"),
                        greedy = TRUE){
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
    num_widths[num_widths == 0] <- NULL # remove entry for missing graphs
    if (length(num_widths) > 1 || length(grep("l|r", axis[1])) > 0) {
      # Complex aligns are ones that don't have the same number of elements that have sizes
      # or for which explicit axis alignment is requested
      vcomplex_align = TRUE
      if(axis[1] == "none") {
        warning(
          "Graphs cannot be vertically aligned unless the axis parameter is set. Placing graphs unaligned.",
          call. = FALSE
        )
        valign <- FALSE
      }

      max_widths <- lapply(grobs, function(x) {x$widths})
      #
      # Aligning the Left margins
      if (length(grep("l", axis[1])) > 0) {
        max_widths <- align_margin(max_widths, "first", greedy = greedy)
      }
      if (length(grep("r", axis[1])) > 0) {
        max_widths <- align_margin(max_widths, "last", greedy = greedy)
      }
    } else {
      max_widths <- list(do.call(grid::unit.pmax, lapply(grobs, function(x){x$widths})))
    }
  }

  if (halign) {
    num_heights <- unique(lapply(grobs, function(x) {length(x$heights)})) # count number of unique lengths
    num_heights[num_heights == 0] <- NULL # remove entry for missing graphs
    if (length(num_heights) > 1 || length(grep("t|b", axis[1])) > 0) {
      # Complex aligns are ones that don't have the same number of elements that have sizes
      # or for which explicit axis alignment is requested
      hcomplex_align = TRUE
      if (axis[1] == "none"){
        warning(
          "Graphs cannot be horizontally aligned unless the axis parameter is set. Placing graphs unaligned.",
          call. = FALSE
        )
        halign <- FALSE
      }

      max_heights <- lapply(grobs, function(x) {x$heights})

      if (length(grep("t", axis[1])) > 0) {
        max_heights <- align_margin(max_heights, "first", greedy = greedy)
      }
      if (length(grep("b", axis[1])) > 0) {
        max_heights <- align_margin(max_heights, "last", greedy = greedy)
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
