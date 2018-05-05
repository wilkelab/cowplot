context("themes")

test_that("background grids match across themes", {
  # background_grid() vs. theme_minimal_grid() major grid lines
  bg_major <- (theme_half_open() + background_grid())$panel.grid.major
  min_grid_major <- theme_minimal_grid()$panel.grid.major
  bg_major$inherit.blank <- min_grid_major$inherit.blank # these never match
  expect_equal(bg_major, min_grid_major)

  # background_grid() vs. theme_minimal_grid() minor grid lines
  expect_equal((theme_half_open() + background_grid())$panel.grid.minor,
               theme_minimal_grid()$panel.grid.minor)
})



# ------------------------------------
# visual tests

test_that("themes look right", {
  df <- data.frame(x = c(1, 2, 3))
  p <- ggplot(df, aes(x, x)) + geom_point()

  expect_doppelganger("theme_half_open()",
    p + theme_half_open()
  )

  expect_doppelganger("theme_minimal_grid()",
    p + theme_minimal_grid()
  )

  expect_doppelganger("theme_minimal_hgrid()",
    p + theme_minimal_hgrid()
  )

  expect_doppelganger("theme_minimal_vgrid()",
    p + theme_minimal_vgrid()
  )

})
