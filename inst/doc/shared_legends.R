## ----echo=FALSE, message=FALSE-------------------------------------------
library(cowplot)
library(grid) # for "unit"
theme_set(theme_cowplot(font_size=12)) # default fontsize doesn't work well for online viewing

## ----fig.width=9, fig.height=3-------------------------------------------
# down-sampled diamonds data set
dsamp <- diamonds[sample(nrow(diamonds), 1000), ]

# Make three plots.
# We set left and right margins to 0 to remove unnecessary spacing in the
# final plot arrangement.
p1 <- qplot(carat, price, data=dsamp, colour=clarity) +
  theme(plot.margin = unit(c(6,0,6,0), "pt"))
p2 <- qplot(depth, price, data=dsamp, colour=clarity) +
  theme(plot.margin = unit(c(6,0,6,0), "pt")) + ylab("")
p3 <- qplot(color, price, data=dsamp, colour=clarity) +
  theme(plot.margin = unit(c(6,0,6,0), "pt")) + ylab("")

# arrange the three plots in a single row
prow <- plot_grid( p1 + theme(legend.position="none"),
           p2 + theme(legend.position="none"),
           p3 + theme(legend.position="none"),
           align = 'vh',
           labels = c("A", "B", "C"),
           hjust = -1,
           nrow = 1
           )
prow

## ----fig.width=10, fig.height=3------------------------------------------
# extract the legend from one of the plots
# (clearly the whole thing only makes sense if all plots
# have the same legend, so we can arbitrarily pick one.)
grobs <- ggplotGrob(p1)$grobs
legend <- grobs[[which(sapply(grobs, function(x) x$name) == "guide-box")]]

# add the legend to the row we made earlier. Give it one-third of the width
# of one plot (via rel_widths).
p <- plot_grid( prow, legend, rel_widths = c(3, .3))
p

## ----fig.width=9, fig.height=3.3-----------------------------------------
# extract the legend from one of the plots
# (clearly the whole thing only makes sense if all plots
# have the same legend, so we can arbitrarily pick one.)
grobs <- ggplotGrob(p1 + theme(legend.position="bottom"))$grobs
legend_b <- grobs[[which(sapply(grobs, function(x) x$name) == "guide-box")]]

# add the legend underneath the row we made earlier. Give it 10% of the height
# of one plot (via rel_heights).
p <- plot_grid( prow, legend_b, ncol = 1, rel_heights = c(1, .2))
p

## ----fig.width=10, fig.height=3------------------------------------------
# arrange the three plots in a single row, leaving space between plot B and C
prow <- plot_grid( p1 + theme(legend.position="none"),
           p2 + theme(legend.position="none"),
           NULL,
           p3 + theme(legend.position="none"),
           align = 'vh',
           labels = c("A", "B", "", "C"),
           hjust = -1,
           nrow = 1,
           rel_widths = c(1, 1, .3, 1)
           )

prow + draw_grob(legend, 2/3.3, 0, .3/3.3, 1)

