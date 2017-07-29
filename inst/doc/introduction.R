## ----eval=FALSE----------------------------------------------------------
#  library(ggplot2)
#  ggplot(mpg, aes(x = cty, y = hwy, colour = factor(cyl))) +
#     geom_point(size = 2.5)

## ----echo=FALSE, message=FALSE-------------------------------------------
library(ggplot2)
ggplot(mpg, aes(x = cty, y = hwy, colour = factor(cyl))) + 
   geom_point(size = 2.5) + theme_gray()

## ----eval=FALSE----------------------------------------------------------
#  library(cowplot)
#  ggplot(mpg, aes(x = cty, y = hwy, colour = factor(cyl))) +
#     geom_point(size = 2.5)

## ----echo=FALSE, message=FALSE-------------------------------------------
require(cowplot)
theme_set(theme_cowplot(font_size=12)) # default fontsize doesn't work well for online viewing
plot.mpg <- ggplot(mpg, aes(x = cty, y = hwy, colour = factor(cyl))) + 
  geom_point(size = 2.5)
plot.mpg

## ----eval=FALSE----------------------------------------------------------
#  library(cowplot)
#  plot.mpg <- ggplot(mpg, aes(x = cty, y = hwy, colour = factor(cyl))) +
#    geom_point(size=2.5)
#  # use save_plot() instead of ggsave() when using cowplot
#  save_plot("mpg.png", plot.mpg,
#            base_aspect_ratio = 1.3 # make room for figure legend
#  )

## ----echo=FALSE, message=FALSE-------------------------------------------
theme_set(theme_cowplot()) # switch to default font size for figure generation
plot.mpg <- ggplot(mpg, aes(x = cty, y = hwy, colour = factor(cyl))) + 
  geom_point(size=2.5)
# use save_plot() instead of ggsave() when using cowplot
save_plot("mpg.png", plot.mpg,
          base_aspect_ratio = 1.3 # make room for figure legend
)
theme_set(theme_cowplot(font_size=12)) # switch back for online figures

## ----echo=FALSE, out.width = "60%"---------------------------------------
knitr::include_graphics("mpg.png")

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
#  save_plot("plot2by2.png", plot2by2,
#            ncol = 2, # we're saving a grid plot of 2 columns
#            nrow = 2, # and 2 rows
#            # each individual subplot should have an aspect ratio of 1.3
#            base_aspect_ratio = 1.3
#            )

## ----echo=FALSE, message=FALSE-------------------------------------------
theme_set(theme_cowplot()) # switch to default font size for figure generation
plot2by2 <- plot_grid(plot.mpg, NULL, NULL, plot.diamonds,
                      labels=c("A", "B", "C", "D"), ncol = 2)
save_plot("plot2by2.png", plot2by2,
          ncol = 2, # we're saving a grid plot of 2 columns
          nrow = 2, # and 2 rows
          # each individual subplot should have an aspect ratio of 1.3
          base_aspect_ratio = 1.3
          )
theme_set(theme_cowplot(font_size=12)) # switch back for online figures

## ----echo=FALSE, out.width = "100%"--------------------------------------
knitr::include_graphics("plot2by2.png")

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
library(viridis)
ggdraw() +
  draw_plot(plot.diamonds + theme(legend.justification = "bottom"), 0, 0, 1, 1) +
  draw_plot(plot.mpg + scale_color_viridis(discrete = TRUE) + 
              theme(legend.justification = "top"), 0.5, 0.52, 0.5, 0.4) +
  draw_plot_label(c("A", "B"), c(0, 0.5), c(1, 0.92), size = 15)

