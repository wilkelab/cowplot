## ---- message=FALSE, fig.width=4.25, fig.height=3.4----------------------
require(cowplot)
require(grid) # for unit()
theme_set(theme_cowplot(font_size=12)) # reduce default font size
p1 <- ggplot(mtcars, aes(mpg, disp)) + geom_line(colour = "blue")
ggdraw(switch_axis_position(p1 + theme_gray(), axis = 'y'))
ggdraw(switch_axis_position(p1 + theme_bw(), axis = 'x', keep = 'x'))
ggdraw(switch_axis_position(p1, axis = 'xy', keep = 'xy'))
ggdraw(switch_axis_position(p1 + theme(axis.ticks.length = unit(0.3, "cm"),
        axis.text.x = element_text(margin = margin(0.2, unit = "cm"))), axis = 'xy'))

## ---- message=FALSE, fig.width=4.25, fig.height=3.4----------------------
p2 <- ggplot(diamonds, aes(clarity, fill = cut)) + geom_bar() +
  theme(axis.text.x = element_text(angle = 70, vjust = 0.5))
ggdraw(switch_axis_position(p2, axis = 'x'))

## ---- message=FALSE, fig.width=4.25, fig.height=3------------------------
mtcars2 <- mtcars[1:15, ]
mtcars2$name <- row.names(mtcars2)
p3 <- ggplot(mtcars2, aes(x = name, y = mpg, fill = name)) + 
  geom_bar(stat = 'identity', position = "identity") + 
  scale_y_reverse() +
  guides(fill = FALSE) +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust = 1))
ggdraw(switch_axis_position(p3, axis = 'x'))

## ---- message=FALSE, fig.width=4.25, fig.height=5.1----------------------
require(gtable)
# top plot
p1 <- ggplot(mtcars, aes(mpg, disp)) + geom_line(colour = 'blue') +
  background_grid(minor = 'none')
g1 <- switch_axis_position(p1, 'xy') # switch both axes
g1 <- gtable_squash_rows(g1, length(g1$height)) # set bottom row to 0 height

p2 <- ggplot(mtcars, aes(mpg, qsec)) + geom_line(colour = 'green') + ylim(14, 25) +
  background_grid(minor = 'none')
g2 <- ggplotGrob(p2)
g2 <- gtable_add_cols(g2, g1$widths[5:6], 4) # add the two additional columns that g1 has
g2 <- gtable_squash_rows(g2, 1:2) # set top two rows to 0 height
plot_grid(g1, g2, ncol = 1, align = 'v')

