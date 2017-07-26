#' Retrieve the legend of a plot
#'
#' This function extracts just the legend from a ggplot
#'
#' @param plot A ggplot or gtable from which to retrieve the legend
#' @return A gtable object holding just the lengend
#' @examples
#' p1 <- ggplot(mtcars, aes(mpg, disp)) + geom_line()
#' plot.mpg <- ggplot(mpg, aes(x = cty, y = hwy, colour = factor(cyl))) + geom_point(size=2.5)
#' # Note that these cannot be aligned vertically due to the legend in the plot.mpg
#' ggdraw(plot_grid(p1, plot.mpg, ncol=1, align='v'))
#'
#' legend <- get_legend(plot.mpg)
#' plot.mpg <- plot.mpg + theme(legend.position='none')
#' # Now plots are aligned vertically with the legend to the right
#' ggdraw(plot_grid(plot_grid(p1, plot.mpg, ncol=1, align='v'),
#'                  plot_grid(NULL, legend, ncol=1),
#'                  rel_widths=c(1, 0.2)))
#' @export
get_legend <- function(plot)
{
    grobs <- plot_to_gtable(plot)$grobs
    legendIndex <- which(sapply(grobs, function(x) x$name) == "guide-box")
    ## make sure this plot has a legend to be extracted
    ## note that multiple legends show up as one grob so this still works for multiple legend plots (i.e. color and shape)
    ## not sure if it is possible to create a plot with multiple legend grobs, but also not sure how this function should handle those situations so this seems to be the best check to provide a useful message
    if (length(legendIndex) == 1){
        legend <- grobs[[legendIndex]]
    } else {
        stop('Plot must contain a legend')
    }
}
