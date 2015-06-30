## ----eval=FALSE----------------------------------------------------------
#  ggplot(mpg, aes(x = cty, y = hwy, colour = factor(cyl))) +
#     geom_point(size = 2.5)

## ----echo=FALSE, message=FALSE-------------------------------------------
require(ggplot2)
ggplot(mpg, aes(x = cty, y = hwy, colour = factor(cyl))) + 
   geom_point(size = 2.5) + theme_gray()

## ----echo=FALSE, message=FALSE-------------------------------------------
require(cowplot)
theme_set(theme_cowplot(font_size=12)) # default fontsize doesn't work well for online viewing
plot.mpg <- ggplot(mpg, aes(x = cty, y = hwy, colour = factor(cyl))) + 
  geom_point(size = 2.5)
plot.mpg

## ----eval=FALSE----------------------------------------------------------
#  require(cowplot)
#  plot.mpg <- ggplot(mpg, aes(x = cty, y = hwy, colour = factor(cyl))) +
#    geom_point(size=2.5)
#  # use save_plot() instead of ggsave() when using cowplot
#  save_plot("mpg.pdf", plot.mpg,
#            base_aspect_ratio = 1.3 # make room for figure legend
#            )

## ----message=FALSE-------------------------------------------------------
plot.mpg + background_grid(major = "xy", minor = "none")

## ----eval=FALSE----------------------------------------------------------
#  plot.mpg + theme_gray() # create plot with default ggplot2 theme
#  theme_set(theme_gray()) # switch to default ggplot2 theme for good

## ----message=FALSE-------------------------------------------------------
plot.mpg <- ggplot(mpg, aes(x = cty, y = hwy, colour = factor(cyl))) + 
  geom_point(size=2.5)
plot.mpg
plot.diamonds <- ggplot(diamonds, aes(clarity, fill = cut)) + geom_bar() +
  theme(axis.text.x = element_text(angle=70, vjust=0.5))
plot.diamonds

## ----message=FALSE, fig.width=7, fig.height=2.5--------------------------
plot_grid(plot.mpg, plot.diamonds, labels = c("A", "B"))

## ----message=FALSE, fig.width=7, fig.height=2.5--------------------------
plot_grid(plot.mpg, plot.diamonds, labels = c("A", "B"), align = "h")

## ----message=FALSE, fig.width=7, fig.height=5----------------------------
plot_grid(plot.mpg, NULL, NULL, plot.diamonds, labels = c("A", "B", "C", "D"), ncol = 2)

## ----message=FALSE, fig.width=4, fig.height=5----------------------------
plot_grid(plot.mpg, plot.diamonds, labels = c("A", "B"), nrow = 2, align = "v")

## ----eval=FALSE----------------------------------------------------------
#  plot2by2 <- plot_grid(plot.mpg, NULL, NULL, plot.diamonds,
#                        labels=c("A", "B", "C", "D"), ncol = 2)
#  save_plot("plot2by2.pdf", plot2by2,
#            ncol = 2, # we're saving a grid plot of 2 columns
#            nrow = 2, # and 2 rows
#            # each individual subplot should have an aspect ratio of 1.3
#            base_aspect_ratio = 1.3
#            )

## ----message=FALSE-------------------------------------------------------
ggdraw(plot.mpg) + 
  draw_plot_label("A", size = 14) + 
  draw_label("DRAFT!", angle = 45, size = 80, alpha = .2)

## ----message=FALSE-------------------------------------------------------
t <- (0:1000)/1000
spiral <- data.frame(x = .45+.55*t*cos(t*15), y = .55-.55*t*sin(t*15), t)
ggdraw(plot.mpg) + 
  geom_path(data = spiral, aes(x = x, y = y, colour = t), size = 6, alpha = .4)

## ----message=FALSE, fig.show="hold"--------------------------------------
boxes <- data.frame(
  x = sample((0:36)/40, 40, replace = TRUE),
  y = sample((0:32)/40, 40, replace = TRUE)
)
# plot on top of annotations
ggdraw() + 
  geom_rect(data = boxes, aes(xmin = x, xmax = x + .15, ymin = y, ymax = y + .15),
            colour = "gray60", fill = "gray80") +
  draw_plot(plot.mpg) +
  draw_label("Plot is on top of the grey boxes", x = 1, y = 1,
            vjust = 1, hjust = 1, size = 10, fontface = 'bold')
# plot below annotations
ggdraw(plot.mpg) + 
  geom_rect(data = boxes, aes(xmin = x, xmax = x + .15, ymin = y, ymax = y + .15),
            colour = "gray60", fill = "gray80") + 
  draw_label("Plot is underneath the grey boxes", x = 1, y = 1,
            vjust = 1, hjust = 1, size = 10, fontface = 'bold')

## ----message=FALSE, fig.width=7, fig.height=5----------------------------
plot.iris <- ggplot(iris, aes(Sepal.Length, Sepal.Width)) + 
  geom_point() + facet_grid(. ~ Species) + stat_smooth(method = "lm") +
  background_grid(major = 'y', minor = "none") + # add thin horizontal lines 
  panel_border() # and a border around each panel
# plot.mpg and plot.diamonds were defined earlier
ggdraw() +
  draw_plot(plot.iris, 0, .5, 1, .5) +
  draw_plot(plot.mpg, 0, 0, .5, .5) +
  draw_plot(plot.diamonds, .5, 0, .5, .5) +
  draw_plot_label(c("A", "B", "C"), c(0, 0, 0.5), c(1, 0.5, 0.5), size = 15)

## ----eval=FALSE, echo=FALSE, message=FALSE, fig.width=7, fig.height=5----
#  # Of course, we can also go crazy:
#  ggdraw() +
#    #geom_rect(data = boxes, aes(xmin = x, xmax = x + .15, ymin = y, ymax = y + .15),
#    #          colour = "gray60", fill = "red", alpha=.03) +
#    geom_path(data = spiral, aes(x = x, y = y, colour = t), size = 6, alpha = .4) +
#    draw_plot(plot.diamonds, -.05, -.1, .55, .55) +
#    draw_plot(plot.diamonds, .65, .4, .5, .5) +
#    draw_plot(plot.mpg, .3, .3, .4, .4) +
#    draw_plot(plot.iris, 0, .7, .7, .35 ) +
#    draw_plot(plot.iris, .45, .0, .6, .3 )

