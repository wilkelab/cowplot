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
  p <- ggplot(mtcars, aes(hp, disp, color = mpg, shape = factor(cyl))) +
    geom_point(size = 2)

  expect_doppelganger("theme half open",
    p + theme_half_open()
  )

  expect_doppelganger("theme minimal grid",
    p + theme_minimal_grid()
  )

  expect_doppelganger("theme minimal hgrid",
    p + theme_minimal_hgrid()
  )

  expect_doppelganger("theme minimal vgrid",
    p + theme_minimal_vgrid()
  )

  expect_doppelganger("theme half open tiny",
                      p + theme_half_open(7)
  )

  expect_doppelganger("theme minimal grid tiny",
                      p + theme_minimal_grid(7)
  )

  expect_doppelganger("theme minimal hgrid tiny",
                      p + theme_minimal_hgrid(7)
  )

  expect_doppelganger("theme minimal vgrid tiny",
                      p + theme_minimal_vgrid(7)
  )

  expect_doppelganger("theme half open huge",
                      p + theme_half_open(22)
  )

  expect_doppelganger("theme minimal grid huge",
                      p + theme_minimal_grid(22)
  )

  expect_doppelganger("theme minimal hgrid huge",
                      p + theme_minimal_hgrid(22)
  )

  expect_doppelganger("theme minimal vgrid huge",
                      p + theme_minimal_vgrid(22)
  )

})
