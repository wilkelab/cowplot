context("get_axes")

test_that("get x and y axes", {
  df <- data.frame(x = 1:3, y = 1:3)
  p <- ggplot(df, aes(x, y)) + geom_point()

  expect_s3_class(get_x_axis(p), "gTree")
  expect_s3_class(get_y_axis(p), "gTree")
  expect_null(get_x_axis(p, position = "top"))
  expect_null(get_y_axis(p, position = "right"))
  expect_s3_class(get_y_axis(p + scale_y_continuous(position = "right"), position = "right"), "gTree")
  expect_s3_class(get_x_axis(p + scale_x_continuous(position = "top"), position = "top"), "gTree")

})

