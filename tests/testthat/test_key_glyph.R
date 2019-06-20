context("key_glyph")

# ------------------------------------
# visual tests

test_that("key glyphs", {
  set.seed(1233)
  df <- data.frame(
    x = sample(letters[1:2], 10, TRUE),
    y = rnorm(10)
  )

  p1 <- ggplot(df, aes(x, y, color = x)) +
    # use geom_point() for missing linetype, size
    geom_point(
      key_glyph = rectangle_key_glyph(fill = color, padding = margin(3, 3, 3, 3))
    )

  expect_doppelganger("rectangle key glyph, color used as fill",
    p1 + theme_map() # add theme_map() for plot title
  )

  p2 <- ggplot(df, aes(x, y, color = x)) +
    geom_boxplot(
      key_glyph = circle_key_glyph(
        fill = color,
        color = "black", linetype = 3, size = 0.3,
        padding = margin(2, 2, 2, 2)
      )
    )

  expect_doppelganger("circle key glyph, color used as fill",
    p2 + theme_map() # add theme_map() for plot title
  )

})

