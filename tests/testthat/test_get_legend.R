context("get_legend")

test_that("get legend", {
  df <- data.frame(x = 1:3, y = 1:3, z = factor(c("a", "b", "c")))
  p <- ggplot(df, aes(x, y, color = z)) + geom_point()

  l <- get_legend(p)

  expect_s3_class(l, "gtable")
  expect_equal(l$name, "guide-box")

  # return null legend if no legend
  # Note by Teun: It is yet unclear to me what the desired behaviour of
  # `get_legend()` is in the face of multiple legends.
  # For now, this test is conditional on ggplot2 version, but this is
  # more of a duct tape solution than a reflection of the intended behaviour
  if (utils::packageVersion("ggplot2") >= "3.5.0") {
    expect_s3_class(get_legend(p + theme(legend.position = "none")), "zeroGrob")
  } else {
    expect_null(get_legend(p + theme(legend.position = "none")))
  }
})

