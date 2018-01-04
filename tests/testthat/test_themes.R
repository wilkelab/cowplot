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

