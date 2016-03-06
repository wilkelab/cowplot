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

## ---- message=FALSE, fig.width=4.25, fig.height=5.1----------------------
plot.iris <- ggplot(iris, aes(Sepal.Length, Sepal.Width)) + 
  geom_point() + facet_grid(. ~ Species) + stat_smooth(method = "lm") +
  background_grid(major = 'y', minor = "none") + # add thin horizontal lines 
  panel_border() # and a border around each panel
plot_grid(plot.iris, plot.mpg, labels = "AUTO", ncol = 1, 
          align = 'v') # aligning does not work here

## ---- message=FALSE, fig.width=6.8, fig.height=2.55----------------------
plot_grid(plot.mpg, plot.diamonds, labels = "AUTO", align = 'h', label_size = 12)

## ---- message=FALSE, fig.width=6.8, fig.height=2.55----------------------
plot_grid(plot.mpg, plot.diamonds, labels = "AUTO", align = 'h', label_size = 12,
          hjust = -1, vjust = 2.5 )

## ---- message=FALSE, fig.width=6.8, fig.height=2.55----------------------
plot_grid(plot.mpg, plot.diamonds, labels = "AUTO", align = 'h', rel_widths = c(1, 1.3))

## ---- message=FALSE, fig.width=6.8, fig.height=2.55----------------------
plot_grid(plot.mpg, plot.diamonds, labels = "AUTO", align = 'h', rel_widths = c(1, 1.3), scale = 0.95)

## ---- message=FALSE, fig.width=7.65, fig.height=5.1----------------------
bottom_row <- plot_grid(plot.mpg, plot.diamonds, labels = c('B', 'C'), align = 'h', rel_widths = c(1, 1.3))
plot_grid(plot.iris, bottom_row, labels = c('A', ''), ncol = 1, rel_heights = c(1, 1.2))

