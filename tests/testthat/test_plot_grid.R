context("plot_grid")

# ------------------------------------
# visual tests

test_that("basic plot arranging works", {
  p1 <- ggplot() + theme(plot.background = element_rect(fill = "red"))
  p2 <- ggplot() + theme(plot.background = element_rect(fill = "green"))
  p3 <- ggplot() + theme(plot.background = element_rect(fill = "blue"))

  expect_doppelganger("basic plot arranging, with missing plot",
    plot_grid(p1, NULL, p2, p3) + theme_map() # add theme_map() for plot title
  )

  expect_doppelganger("basic plot arranging, labeling",
    plot_grid(p1, NULL, p2, p3, labels = "AUTO") + theme_map() # add theme_map() for plot title
  )

  expect_doppelganger("setting widths, 1:1:2",
    plot_grid(p1, p2, p3, rel_widths = c(1, 1, 2), nrow = 1) + theme_map() # add theme_map() for plot title
  )

  expect_doppelganger("setting heights, 1:1:2",
    plot_grid(p1, p2, p3, rel_heights = c(1, 1, 2), ncol = 1) + theme_map() # add theme_map() for plot title
  )

  expect_doppelganger("scaling plots",
    plot_grid(p1, p2, p3, labels = "AUTO", scale = c(.9, .7, .5), nrow = 1) + theme_map() # add theme_map() for plot title
  )

  expect_doppelganger("colwise arranging",
    plot_grid(p1, NULL, p2, p3, NULL, byrow = FALSE) + theme_map() # add theme_map() for plot title
  )
})


test_that("alignment", {
  # basic alignment
  df <- data.frame(
    short = c("a", "b", "c"),
    long = c("aaaaaaaa", "bbbbbbbb", "ccccccccc"),
    x = 1:3
  )

  p1 <- ggplot(df, aes(x, short)) + geom_point()
  p2 <- ggplot(df, aes(x, long)) + geom_point()
  p3 <- p2 + coord_flip() + theme(axis.text.x = element_text(angle = 90))

  expect_doppelganger("vertical alignment",
    plot_grid(p1, p2, ncol = 1, align = "v") + theme_map()
  )
  expect_doppelganger("horizontal alignment",
    plot_grid(p1, p3, nrow = 1, align = "h") + theme_map()
  )
  expect_doppelganger("horizontal & vertical alignment",
    plot_grid(p1, NULL, p2, p3, align = "hv") + theme_map()
  )

  # complex alignment
  p4 <- p1 + aes(color = short)
  p5 <- p1 + facet_wrap(~long)
  expect_doppelganger("horizontal alignment, bottom axis",
    plot_grid(p4, p5, align = "h", axis = "b") + theme_map()
  )
  expect_doppelganger("horizontal alignment, top axis",
    plot_grid(p4, p5, align = "h", axis = "t") + theme_map()
  )
  expect_doppelganger("vertical alignment, left axis",
    plot_grid(p4, p5, ncol = 1, align = "v", axis = "l") + theme_map()
  )
  expect_doppelganger("vertical alignment, right axis",
    plot_grid(p4, p5, ncol = 1, align = "v", axis = "r") + theme_map()
  )
  expect_doppelganger("h/v alignment, right and top axes",
    plot_grid(
      p4, p5 + theme(strip.text = element_text(size = 80)),
      ncol = 1, align = "hv", axis = "rt"
    ) + theme_map()
  )

  # aligning facets with unequal widths
  df <- data.frame(
    type = c("a", "b", "c"),
    xstart = c(1, 1, 1),
    xend = c(2, 5, 3),
    xend2 = c(3, 2, 5)
  )

  p1 <- ggplot(df, aes(x = xstart, xend = xend, y = 0, yend = 1)) +
    geom_segment() +
    facet_grid(~type, scales = "free_x", space = "free_x")

  p2 <- ggplot(df, aes(x = xstart, xend = xend2, y = 0, yend = 1000)) +
    geom_segment() +
    facet_grid(~type, scales = "free_x", space = "free_x")

  expect_doppelganger("aligning faceted plots w/ unequal widths",
    plot_grid(p1, p2, ncol = 1, align = 'v', axis = "rl") + theme_map()
  )
})



test_that("labels reorder by byrow", {
  # byrow=TRUE
  p_list <- lapply(1:3, \(x) ggplot())
  g <- plot_grid(plotlist = p_list, ncol = 2, labels = 1:3, byrow = TRUE)
  expect_equal(layer_data(g, 4)$label, 2)

  # byrow=FALSE
  p_list <- lapply(1:3, \(x) ggplot())
  g <- plot_grid(plotlist = p_list, ncol = 2, labels = 1:3, byrow = FALSE)
  expect_equal(layer_data(g, 4)$label, 3)
})
