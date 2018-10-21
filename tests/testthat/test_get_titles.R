context("get_titles")

test_that("get titles", {
  p <- ggplot(iris, aes(Sepal.Length, Sepal.Width)) + geom_point()

  expect_s3_class(get_title(p), "zeroGrob")
  expect_s3_class(get_subtitle(p), "zeroGrob")

  p <- p + labs(title = "Title", subtitle = "Subtitle")

  expect_s3_class(get_title(p), "titleGrob")
  expect_s3_class(get_subtitle(p), "titleGrob")
})

