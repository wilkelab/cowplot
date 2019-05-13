context("draw_* functions")

test_that("draw_grob() can align grobs", {
  p <- ggplot() + xlim(0, 1) + ylim(0, 1)

  g <- grid::rectGrob(gp = grid::gpar(fill = "blue"))

  expect_doppelganger("Centered, full width/height",
    p + draw_grob(g)
  )

  expect_doppelganger("Centered, half width/height",
    p + draw_grob(g, x = .5, y = .5, width = .5, height = .5, hjust = .5, vjust = .5)
  )

  expect_doppelganger("Top left, half width/height",
    p + draw_grob(g, x = 0, y = 1, width = .5, height = .5, hjust = 0, vjust = 1)
  )

  expect_doppelganger("Bottom right, half width/height",
    p + draw_grob(g, x = 1, y = 0, width = .5, height = .5, hjust = 1, vjust = 0)
  )
})

