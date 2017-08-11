context("ggdraw")

test_that("basic ggdraw usage", {
  # empty ggdraw object
  g <- ggdraw()

  expect_equal(methods::is(g), "gg")

  # test proper scale limits on empty object
  scales <- layer_scales(g)
  expect_equal(scales$x$limits, c(0, 1))
  expect_equal(scales$y$limits, c(0, 1))
})

