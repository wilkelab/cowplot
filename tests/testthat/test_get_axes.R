context("get_axes")

test_that("get x and y axes", {
  p <- ggplot(iris, aes(Sepal.Length, Sepal.Width)) + geom_point()

  expect_s3_class(get_x_axis(p), "gTree")
  expect_s3_class(get_y_axis(p), "gTree")
  expect_s3_class(get_x_axis(p, side = "t"), "zeroGrob")
  expect_s3_class(get_y_axis(p, side = "r"), "zeroGrob")
  expect_s3_class(get_y_axis(p + scale_y_continuous(position = "right"), side = "r"), "gTree")
  expect_s3_class(get_x_axis(p + scale_x_continuous(position = "top"), side = "t"), "gTree")

})

