context("ggdraw")

test_that("basic ggdraw usage", {
  # empty ggdraw object
  g <- ggdraw()

  expect_equal(methods::is(g), "gg")

  # test proper scale limits on empty object
  build <- ggplot2::ggplot_build(g)
  limits <- build$layout$coord$limits
  expect_equal(limits$x, c(0, 1))
  expect_equal(limits$y, c(0, 1))
})

