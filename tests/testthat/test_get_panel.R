context("get_panel")

test_that("get panel", {
  p <- ggplot(iris, aes(Sepal.Length, Sepal.Width, color=Species)) + geom_point()

  panel <- get_panel(p)

  expect_s3_class(panel, "gTree")
  expect_match(panel$name, "^panel-1\\.gTree\\.")

  # get_panel() doesn't work for faceted plots
  expect_error(get_panel(p + facet_wrap(~Species)))
})

