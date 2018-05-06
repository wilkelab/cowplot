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


})

