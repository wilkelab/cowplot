context("get_titles")

test_that("get titles", {
  df <- data.frame(x = 1:3, y = 1:3)
  p <- ggplot(df, aes(x, y)) + geom_point()

  expect_null(get_title(p))
  expect_null(get_subtitle(p))

  p <- p + labs(title = "Title", subtitle = "Subtitle")

  expect_s3_class(get_title(p), "titleGrob")
  expect_s3_class(get_subtitle(p), "titleGrob")
})

