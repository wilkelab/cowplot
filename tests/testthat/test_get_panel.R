context("get_panel")

test_that("get panel", {
  p <- ggplot(iris, aes(Sepal.Length, Sepal.Width, color=Species)) + geom_point()

  panel <- get_panel(p)

  expect_equal(methods::is(panel), "gTree")
  expect_match(panel$name, "^panel-1\\.gTree\\.")
})

