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

test_that("image placement and scaling", {
  img_src <- system.file("extdata", "logo.png", package = "cowplot")

  p <- ggplot() + xlim(0, 1) + ylim(0, 1)

  expect_doppelganger(
    "four corners, centered, scaled",
    p +
      draw_image(
        img_src, scale = 0.5,
        x = 0, y = 0, width = .4, height = .4, hjust = 0, vjust = 0
      ) +
      draw_image(
        img_src, scale = 0.75,
        x = 1, y = 0, width = .4, height = .4, hjust = 1, vjust = 0
      ) +
      draw_image(
        img_src, scale = 1.0,
        x = 1, y = 1, width = .4, height = .4, hjust = 1, vjust = 1
      ) +
      draw_image(
        img_src, scale = 1.25,
        x = 0, y = 1, width = .4, height = .4, hjust = 0, vjust = 1
      )
  )

  expect_doppelganger(
    "four corners, aligned, scaled",
    p +
      draw_image(
        img_src, scale = 0.5,
        x = 0, y = 0, width = .4, height = .4, hjust = 0, vjust = 0,
        halign = 0, valign = 0
      ) +
      draw_image(
        img_src, scale = 0.75,
        x = 1, y = 0, width = .4, height = .4, hjust = 1, vjust = 0,
        halign = 1, valign = 0
      ) +
      draw_image(
        img_src, scale = 1.0,
        x = 1, y = 1, width = .4, height = .4, hjust = 1, vjust = 1,
        halign = 1, valign = 1
      ) +
      draw_image(
        img_src, scale = 1.25,
        x = 0, y = 1, width = .4, height = .4, hjust = 0, vjust = 1,
        halign = 0, valign = 1
      )
  )
})



test_that("draw_plot_label() works", {
  theme_old <- theme_set(
    theme_cowplot() +
    theme(text = element_text(color = "red"))
  )

  expect_doppelganger("Label color taken from theme",
    ggdraw() +
      draw_plot_label(label = "red label", x = .5, y = .5, hjust = .5, vjust = .5) +
      theme_map()
  )
  expect_doppelganger("Label color specified w/ US spelling",
    ggdraw() +
      draw_plot_label(label = "blue label", color = "blue", x = .5, y = .5, hjust = .5, vjust = .5) +
      theme_map()
  )
  expect_doppelganger("Label color specified w/ UK spelling",
    ggdraw() +
      draw_plot_label(label = "blue label", colour = "blue", x = .5, y = .5, hjust = .5, vjust = .5) +
      theme_map()
  )

  theme_set(theme_old)
  }
)

