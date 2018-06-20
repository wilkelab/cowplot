context("get_legend")

test_that("get legend", {
  p <- ggplot(iris, aes(Sepal.Length, Sepal.Width, color=Species)) + geom_point()

  l <- get_legend(p)

  expect_s3_class(l, "gtable")
  expect_equal(l$name, "guide-box")

  # return null legend if no legend
  expect_null(get_legend(p + theme(legend.position = "none")))
})

