## ---- message=FALSE, fig.width=6.8, fig.height=2.55----------------------
require(cowplot)
theme_set(theme_cowplot(font_size=12)) # reduce default font size
plot.mpg <- ggplot(mpg, aes(x = cty, y = hwy, colour = factor(cyl))) + 
  geom_point(size=2.5)
plot.diamonds <- ggplot(diamonds, aes(clarity, fill = cut)) + geom_bar() +
  theme(axis.text.x = element_text(angle=70, vjust=0.5))
plot_grid(plot.mpg, plot.diamonds, labels = c('A', 'B'))

## ---- message=FALSE, fig.width=6.8, fig.height=2.55----------------------
plot_grid(plot.mpg, plot.diamonds, labels = "AUTO")

## ---- message=FALSE, fig.width=6.8, fig.height=2.55----------------------
plot_grid(plot.mpg, plot.diamonds, labels = "auto")

## ---- message=FALSE, fig.width=6.8, fig.height=2.55----------------------
plot_grid(plot.mpg, plot.diamonds, labels = "AUTO", align = 'h')

## ---- message=FALSE, fig.width=3.9, fig.height=5.1-----------------------
plot_grid(plot.mpg, plot.diamonds, labels = "AUTO", ncol = 1, align = 'v')

## ---- message=FALSE, fig.width=5, fig.height=5---------------------------
plot.iris <- ggplot(iris, aes(Sepal.Length, Sepal.Width)) + 
  geom_point() + facet_grid(. ~ Species) + stat_smooth(method = "lm") +
  background_grid(major = 'y', minor = "none") + # add thin horizontal lines 
  panel_border() # and a border around each panel
plot_grid(plot.iris, plot.mpg, labels = "AUTO", ncol = 1, 
          align = 'v', axis = 'l') # aligning vertically along the left axis

## ---- message=FALSE, results="hold", collapse=TRUE-----------------------
par(xpd = NA, # switch off clipping, necessary to always see axis labels
    bg = "transparent", # switch off background to avoid obscuring adjacent plots
    oma = c(2, 2, 0, 0), # move plot to the right and up
    mgp = c(2, 1, 0) # move axis labels closer to axis
  ) 
plot(sqrt) # plot the square root function
recordedplot <- recordPlot() # record the previous plot

## ---- message=FALSE------------------------------------------------------
plotfunc <- function() image(volcano) # define the function
plotfunc() # call the function to make the plot

## ---- message=FALSE------------------------------------------------------
gcircle <- grid::circleGrob()
ggdraw(gcircle)

## ---- message=FALSE, fig.width=7, fig.height=5---------------------------
plot_grid(plot.mpg, recordedplot, plotfunc, gcircle, labels = "AUTO", hjust = 0, vjust = 1,
          scale = c(1., 1., 0.9, 0.9))

## ---- message=FALSE, fig.width=6.8, fig.height=2.55----------------------
plot_grid(plot.mpg, plot.diamonds, labels = "AUTO", align = 'h', label_size = 12)

## ---- message=FALSE, fig.width=6.8, fig.height=2.55----------------------
plot_grid(plot.mpg, plot.diamonds, labels = "AUTO", align = 'h', label_fontfamily = "serif",
          label_fontface = "plain", label_colour = "blue")

## ---- message=FALSE, fig.width=6.8, fig.height=2.55----------------------
plot_grid(plot.mpg, plot.diamonds, labels = "AUTO", align = 'h', label_size = 12,
          label_x = 0, label_y = 0, hjust = -0.5, vjust = -0.5 )

## ---- message=FALSE, fig.width=6.8, fig.height=2.55----------------------
plot_grid(plot.mpg, plot.diamonds, labels = "AUTO", align = 'h', rel_widths = c(1, 1.3))

## ---- message=FALSE, fig.width=7.65, fig.height=5.1----------------------
bottom_row <- plot_grid(plot.mpg, plot.diamonds, labels = c('B', 'C'), align = 'h', rel_widths = c(1, 1.3))
plot_grid(plot.iris, bottom_row, labels = c('A', ''), ncol = 1, rel_heights = c(1, 1.2))

## ---- message=FALSE, fig.width=7.65, fig.height=5.1----------------------
# first align the top-row plot (plot.iris) with the left-most plot of the
# bottom row (plot.mpg)
plots <- align_plots(plot.mpg, plot.iris, align = 'v', axis = 'l')
# then build the bottom row
bottom_row <- plot_grid(plots[[1]], plot.diamonds, 
                        labels = c('B', 'C'), align = 'h', rel_widths = c(1, 1.3))
# then combine with the top row for final plot
plot_grid(plots[[2]], bottom_row, labels = c('A', ''), ncol = 1, rel_heights = c(1, 1.2))

