## ----echo=FALSE, message=FALSE-------------------------------------------
library(cowplot)

## ----fig.width=5, fig.height=5, warning=FALSE----------------------------
c <- cor.test(mtcars$mpg, mtcars$disp, method='sp')
label <- substitute(paste("Spearman ", rho, " = ", estimate, ", P = ", pvalue),
                    list(estimate = signif(c$estimate, 2), pvalue = signif(c$p.value, 2)))
# adding label via ggdraw, in the ggdraw coordinates
ggdraw(p1) + draw_label(label, .7, .9)

## ----fig.width=5, fig.height=5-------------------------------------------
# adding label directly to plot, in the data coordinates
p1 + draw_label(label, 20, 400, hjust = 0, vjust = 0)

## ----fig.width=8, fig.height=4-------------------------------------------
# make a plot grid consisting of two panels
p1 <- ggplot(mtcars, aes(x=disp, y=mpg)) + geom_point(colour = "blue") + background_grid(minor='none')
p2 <- ggplot(mtcars, aes(x=hp, y=mpg)) + geom_point(colour = "green") + background_grid(minor='none')
p <- plot_grid(p1, p2, labels=c('A', 'B'))
# now add the title
title <- ggdraw() + draw_label("MPG declines with displacement and horsepower", fontface='bold')
plot_grid(title, p, ncol=1, rel_heights=c(0.1, 1)) # rel_heights values control title margins

## ----fig.width=5, fig.height=5-------------------------------------------
p1 <- ggplot(mtcars, aes(mpg, disp)) + geom_line(colour = "blue") + background_grid(minor='none')
p1

## ----fig.width=5, fig.height=5-------------------------------------------
p2 <- add_sub(p1, "This is an annotation.\nAnnotations can span multiple lines.")
ggdraw(p2)

## ----fig.width=5, fig.height=5-------------------------------------------
p2 <- add_sub(p1, "This formula has no relevance here:", y  = 0, vjust = 0)
p3 <- add_sub(p2, expression(paste(a^2+b^2, " = ", c^2)), size=12)
ggdraw(p3)

## ----fig.width=7, fig.height=5-------------------------------------------
plot.iris <- ggplot(iris, aes(Sepal.Length, Sepal.Width)) +
  geom_point() + facet_grid(. ~ Species) + stat_smooth(method = "lm") +
  background_grid(major = 'y', minor = "none") + # add thin horizontal lines
  panel_border() # and a border around each panel
p2 <- add_sub(plot.iris, "Annotation underneath a faceted plot, left justified.", x = 0, hjust = 0)
ggdraw(p2)

## ----fig.width=5, fig.height=5-------------------------------------------
ggdraw(add_sub(p1, "Annotation inside plot", vpadding=grid::unit(0, "lines"),
       y = 6, x = 0.03, hjust = 0))

