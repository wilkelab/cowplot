## ----echo=FALSE, message=FALSE-------------------------------------------
require(ggplot2)

## ----message=FALSE-------------------------------------------------------
ggplot(mpg, aes(x = cty, y = hwy, colour = factor(cyl))) + geom_point(size=2.5)

## ----echo=FALSE, message=FALSE-------------------------------------------
require(cowplot)
theme_set(theme_cowplot(font_size=11)) # default fontsize doesn't work well for online viewing
ggplot(mpg, aes(x = cty, y = hwy, colour = factor(cyl))) + geom_point(size=2.5)

## ----eval=FALSE----------------------------------------------------------
#  require(cowplot)
#  plot.mpg <- ggplot(mpg, aes(x = cty, y = hwy, colour = factor(cyl))) + geom_point(size=2.5)
#  save_plot("mpg.pdf", plot.mpg) # use this instead of ggsave() when using cowplot

## ----message=FALSE-------------------------------------------------------
plot.mpg <- ggplot(mpg, aes(x = cty, y = hwy, colour = factor(cyl))) + geom_point(size=2.5)
ggdraw(plot.mpg) + 
  draw_plot_label("A", size = 13) + 
  draw_text("DRAFT!", angle = 45, size = 80, alpha = .2)

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
  draw_text("Plot is on top of the grey boxes", x = 1, y = 1, vjust = 1, hjust = 1, size = 10, fontface = 'bold')
# plot below annotations
ggdraw(plot.mpg) + 
  geom_rect(data = boxes, aes(xmin = x, xmax = x + .15, ymin = y, ymax = y + .15),
            colour = "gray60", fill = "gray80") + 
  draw_text("Plot is underneath the grey boxes", x = 1, y = 1, vjust = 1, hjust = 1, size = 10, fontface = 'bold')

## ----message=FALSE, fig.width=7, fig.height=5----------------------------
plot.iris <- ggplot(iris, aes(Sepal.Length, Sepal.Width)) + 
  geom_point() + facet_grid(. ~ Species) + stat_smooth(method = "lm")
plot.diamonds <- ggplot(diamonds, aes(clarity, fill = cut)) + geom_bar() +
  theme(axis.text.x = element_text(angle=70, vjust=0.5))
ggdraw() +
  draw_plot(plot.iris, 0, .5, 1, .5) +
  draw_plot(plot.mpg, 0, 0, .5, .5) +
  draw_plot(plot.diamonds, .5, 0, .5, .5) +
  draw_plot_label(c("A", "B", "C"), c(0, 0, 0.5), c(1, 0.5, 0.5), size = 15)

## ----message=FALSE, fig.width=7, fig.height=5----------------------------
ggdraw() +
  #geom_rect(data = boxes, aes(xmin = x, xmax = x + .15, ymin = y, ymax = y + .15),
  #          colour = "gray60", fill = "red", alpha=.03) +
  geom_path(data = spiral, aes(x = x, y = y, colour = t), size = 6, alpha = .4) +
  draw_plot(plot.diamonds, -.05, -.05, .55, .55) +
  draw_plot(plot.diamonds, .55, -.05, .5, .5) +
  draw_plot(plot.mpg, .25, .3, .4, .4) +
  draw_plot(plot.iris, 0, .7, .7, .35 ) +
  draw_plot(plot.iris, .6, .4, .6, .3 )

