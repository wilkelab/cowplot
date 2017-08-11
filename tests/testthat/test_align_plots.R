context("align_plots")

test_that("basic alignments, h, v, hv", {
  p1 <- qplot(1:10, 1:10)
  p2 <- qplot(1:10, (1:10)^2) + theme(plot.margin = margin())

  plots <- align_plots(p1, p2, align = "h")
  expect_equal(plots[[1]]$heights, plots[[2]]$heights)

  plots <- align_plots(p1, p2, align = "v")
  expect_equal(plots[[1]]$widths, plots[[2]]$widths)

  plots <- align_plots(p1, p2, align = "vh")
  expect_equal(plots[[1]]$widths, plots[[2]]$widths)
  expect_equal(plots[[1]]$heights, plots[[2]]$heights)

  plots <- align_plots(p1, p2, align = "hv")
  expect_equal(plots[[1]]$widths, plots[[2]]$widths)
  expect_equal(plots[[1]]$heights, plots[[2]]$heights)
})


test_that("complex alignments, h, v, hv", {
  p1 <- qplot(1:10, 1:10)
  p2 <- ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width)) + geom_point() + facet_wrap(~Species)

  # these plots cannot be aligned unless axes are specified
  expect_warning(align_plots(p1, p2, align = "v"))

  plots <- align_plots(p1, p2, align = "v", axis = "l")
  expect_equal(plots[[1]]$widths[1:3], plots[[2]]$widths[1:3])
})
