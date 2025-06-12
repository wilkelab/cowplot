context("get_legend")

test_that("get legend", {
  df <- data.frame(x = 1:3, y = 1:3, z = factor(c("a", "b", "c")))
  p <- ggplot(df, aes(x, y, color = z)) + geom_point()

  l <- get_legend(p)

  expect_s3_class(l, "gtable")
  expect_equal(l$name, "guide-box")

  # return null legend if no legend
  expect_null(get_legend(p + theme(legend.position = "none")))
})

