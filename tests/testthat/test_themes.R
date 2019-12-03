context("themes")

test_that("background grids match across themes", {
  # background_grid() vs. theme_minimal_grid() grid lines
  e1 <- calc_element("panel.grid.major.x", theme_half_open() + background_grid())
  e2 <- calc_element("panel.grid.major.x", theme_minimal_grid())
  e1$inherit.blank <- e2$inherit.blank # these never match
  expect_equal(e1, e2)

  e1 <- calc_element("panel.grid.major.y", theme_half_open() + background_grid())
  e2 <- calc_element("panel.grid.major.y", theme_minimal_grid())
  e1$inherit.blank <- e2$inherit.blank # these never match
  expect_equal(e1, e2)

  e1 <- calc_element("panel.grid.minor.x", theme_half_open() + background_grid())
  e2 <- calc_element("panel.grid.minor.x", theme_minimal_grid())
  e1$inherit.blank <- e2$inherit.blank # these never match
  expect_equal(e1, e2)

  e1 <- calc_element("panel.grid.minor.y", theme_half_open() + background_grid())
  e2 <- calc_element("panel.grid.minor.y", theme_minimal_grid())
  e1$inherit.blank <- e2$inherit.blank # these never match
  expect_equal(e1, e2)

  # background_grid() vs. theme_minimal_vgrid() major grid lines
  e1 <- calc_element("panel.grid.major.x", theme_half_open() + background_grid(major = "x"))
  e2 <- calc_element("panel.grid.major.x", theme_minimal_vgrid())
  e1$inherit.blank <- e2$inherit.blank # these never match
  expect_equal(e1, e2)

  e1 <- calc_element("panel.grid.major.y", theme_half_open() + background_grid(major = "x"))
  e2 <- calc_element("panel.grid.major.y", theme_minimal_vgrid())
  e1$inherit.blank <- e2$inherit.blank # these never match
  expect_equal(e1, e2)

  # background_grid() vs. theme_minimal_hgrid() major grid lines
  e1 <- calc_element("panel.grid.major.x", theme_half_open() + background_grid(major = "y"))
  e2 <- calc_element("panel.grid.major.x", theme_minimal_hgrid())
  e1$inherit.blank <- e2$inherit.blank # these never match
  expect_equal(e1, e2)

  e1 <- calc_element("panel.grid.major.y", theme_half_open() + background_grid(major = "y"))
  e2 <- calc_element("panel.grid.major.y", theme_minimal_hgrid())
  e1$inherit.blank <- e2$inherit.blank # these never match
  expect_equal(e1, e2)

})



# ------------------------------------
# visual tests

test_that("themes look right", {
  p <- ggplot(mtcars, aes(hp, disp, color = mpg, shape = factor(cyl))) +
    geom_point(size = 2) +
    guides(
      shape = guide_legend(order = 1),
      color = guide_colorbar(order = 2)
    )

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
