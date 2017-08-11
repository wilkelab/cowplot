context("get_legend")

test_that("get legend", {
  p <- ggplot(iris, aes(Sepal.Length, Sepal.Width, color=Species)) + geom_point()

  l <- get_legend(p)

  expect_equal(methods::is(l), "gtable")
  expect_equal(l$name, "guide-box")
})

