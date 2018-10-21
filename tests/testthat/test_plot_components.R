context("test_plot_components")

test_that("plot components", {
  p <- ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) + geom_point()

  component_names <- c(
    "background", "spacer", "axis-l", "spacer", "axis-t", "panel",
    "axis-b", "spacer", "axis-r", "spacer", "xlab-t", "xlab-b", "ylab-l",
    "ylab-r", "guide-box", "subtitle", "title", "caption", "tag"
  )

  expect_type(plot_component_names(p), "character")
  expect_true(all(component_names %in% plot_component_names(p)))

  x_label <- get_plot_component(p, "xlab-b")
  expect_s3_class(x_label, "grob")
  expect_null(get_plot_component(p, "no-matching-grob"))

  expect_type(plot_components(p), "list")
})
