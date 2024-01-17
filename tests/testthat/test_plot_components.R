context("test_plot_components")

test_that("plot components", {
  df <- data.frame(x = 1:3, y = 1:3, z = factor(c("a", "b", "c")))
  p <- ggplot(df, aes(x, y, color = z)) + geom_point()

  component_names <- c(
    "background", "spacer", "axis-l", "spacer", "axis-t", "panel",
    "axis-b", "spacer", "axis-r", "spacer", "xlab-t", "xlab-b", "ylab-l",
    "ylab-r", "guide-box", "subtitle", "title", "caption", "tag"
  )
  if (inherits(guide_legend(), "Guide")) { # proxy testing for ggplot2 3.5.0+
    component_names <- setdiff(component_names, c("guide-box", "tag"))
    component_names <- union(
      component_names,
      paste0("guide-box-", c("left", "right", "top", "bottom", "inside"))
    )
  }

  expect_type(plot_component_names(p), "character")
  expect_true(all(component_names %in% plot_component_names(p)))

  x_label <- get_plot_component(p, "xlab-b")
  expect_s3_class(x_label, "grob")
  expect_null(get_plot_component(p, "no-matching-grob"))

  expect_type(plot_components(p), "list")
})
