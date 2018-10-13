## ------------------------------------------------------------------------
library(ggplot2)
ggplot(mpg, aes(x = cty, y = hwy, colour = factor(cyl))) + 
   geom_point(size = 2.5)

## ----message = FALSE-----------------------------------------------------
library(cowplot)
ggplot(mpg, aes(x = cty, y = hwy, colour = factor(cyl))) + 
   geom_point(size = 2.5) + theme_cowplot()

## ------------------------------------------------------------------------
plot.mpg <- ggplot(mpg, aes(x = cty, y = hwy, colour = factor(cyl))) + 
  geom_point(size=2.5) + theme_cowplot()
# use save_plot() instead of ggsave() when using cowplot for improved defaults
save_plot("mpg.png", plot.mpg)

## ----echo=FALSE----------------------------------------------------------
ggdraw() + draw_image("mpg.png")

## ----message=FALSE-------------------------------------------------------
plot.mpg + background_grid(major = "xy", minor = "none")

## ----fig.width = 8.5, fig.height = 8.5/1.7-------------------------------
plot_grid(
  plot.mpg + theme_minimal_grid(12) + ggtitle("theme_minimal_grid()"),
  plot.mpg + theme_minimal_hgrid(12) + ggtitle("theme_minimal_hgrid()"),
  plot.mpg + theme_minimal_vgrid(12) + ggtitle("theme_minimal_vgrid()"),
  plot.mpg + theme_map(12) + ggtitle("theme_map()"), align = "hv"
)

## ----message=FALSE, fig.width=5------------------------------------------
plot.mpg <- ggplot(mpg, aes(x = cty, y = hwy, colour = factor(cyl))) + 
  geom_point(size=2.5) + theme_cowplot()
plot.mpg
plot.diamonds <- ggplot(diamonds, aes(clarity, fill = cut)) + geom_bar() +
   theme_cowplot() + theme(axis.text.x = element_text(angle=70, vjust=0.5, hjust = 0.9))
plot.diamonds

## ----message=FALSE, fig.width=8, fig.height=8/(2*1.35)-------------------
plot_grid(plot.mpg, plot.diamonds, labels = c("A", "B"))

## ----message=FALSE, fig.width=8, fig.height=8/(2*1.35)-------------------
plot_grid(plot.mpg, plot.diamonds, labels = c("A", "B"), align = "h")

## ----message=FALSE, fig.width=8, fig.height=8/1.35-----------------------
plot_grid(plot.mpg, NULL, NULL, plot.diamonds, labels = c("A", "B", "C", "D"), ncol = 2)

## ----message=FALSE, fig.width=8/2, fig.height=8/1.35---------------------
plot_grid(plot.mpg, plot.diamonds, labels = c("A", "B"), nrow = 2, align = "v")

## ------------------------------------------------------------------------
plot2by2 <- plot_grid(plot.mpg, NULL, NULL, plot.diamonds,
                      labels=c("A", "B", "C", "D"), ncol = 2)
save_plot(
  "plot2by2.png", plot2by2,
  ncol = 2, # we're saving a grid plot of 2 columns
  nrow = 2, # and 2 rows
  base_asp = 1.35 # aspect ratio of 1.35 for individual figures in the grid 
)

## ----echo=FALSE, fig.width=6, fig.height=6/1.35--------------------------
ggdraw() + draw_image("plot2by2.png")

## ----message=FALSE-------------------------------------------------------
ggdraw(plot.mpg) + 
  draw_plot_label("A", size = 14) + 
  draw_label("DRAFT!", angle = 45, size = 80, alpha = .2)

## ----message=FALSE-------------------------------------------------------
t <- (0:1000)/1000
spiral <- data.frame(x = .45+.55*t*cos(t*15), y = .55-.55*t*sin(t*15), t)
ggdraw(plot.mpg) + 
  geom_path(data = spiral, aes(x = x, y = y, colour = t), size = 6, alpha = .4)

## ----message=FALSE, warning=FALSE, fig.show="hold"-----------------------
boxes <- data.frame(
  x = sample((0:33)/40, 40, replace = TRUE),
  y = sample((0:33)/40, 40, replace = TRUE)
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

## ----message=FALSE, fig.width=7, fig.height=6----------------------------
# plot.mpg and plot.diamonds were defined earlier
ggdraw() +
  draw_plot(
    plot.diamonds + theme(legend.justification = "bottom"),
    0, 0, 1, 1
  ) +
  draw_plot(
    plot.mpg + scale_color_viridis_d() + 
      theme(legend.justification = "top", plot.background = element_rect(fill = "white")),
    0.5, 0.54, 0.5, 0.4
  ) +
  draw_plot_label(
    c("A", "B"),
    c(0, 0.5),
    c(1, 0.94),
    size = 15
  )

## ----message=FALSE-------------------------------------------------------
p <- ggplot(iris, aes(x = Sepal.Length, fill = Species)) + 
  geom_density(alpha = 0.7) +
  scale_y_continuous(expand = c(0, 0)) + 
  theme_cowplot()
ggdraw() +
  draw_image("http://jeroen.github.io/images/tiger.svg") +
  draw_plot(p)

## ----message=FALSE, fig.width=7, fig.height=2.5--------------------------
p2 <- ggdraw() + draw_image("http://jeroen.github.io/images/tiger.svg", scale = 0.9)
plot_grid(p, p2, labels = "AUTO")

