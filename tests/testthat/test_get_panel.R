context("get_panel")

test_that("get panel", {
  p <- ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) + geom_point()

  panel <- get_panel(p)

  expect_s3_class(panel, "gTree")
  expect_match(panel$name, "^panel-1\\.gTree\\.")

  # get_panel() returns just 1 unless specified
  facet_p <- p + facet_wrap(~Species)
  expect_warning(get_panel(facet_p))
  expect_type(get_panel(facet_p, return_all = TRUE), "list")
})

