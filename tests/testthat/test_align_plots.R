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

  p3 <- ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width)) + geom_point() + facet_wrap(~Species, ncol=1)

  # these plots cannot be aligned unless axes are specified
  expect_warning(align_plots(p1, p3, align = "h"))

  plots <- align_plots(p1, p3, align = "h", axis = "bt")
  # commented out from here because gtable layout has changed from ggplot2 2.* to 3.*
  ##expect_equal(plots[[1]]$heights[7:10], plots[[2]]$heights[18:21])

  ## these units are only equal after we've added everything up
  ##expect_equal(grid::convertUnit(plots[[1]]$heights[1] +
  ##                               plots[[1]]$heights[2] +
  ##                               plots[[1]]$heights[3] +
  ##                               plots[[1]]$heights[4] +
  ##                               plots[[1]]$heights[5] +
  ##                               plots[[1]]$heights[6], "cm"),
  ##             grid::convertUnit(plots[[2]]$heights[1] +
  ##                               plots[[2]]$heights[2] +
  ##                               plots[[2]]$heights[3] +
  ##                               plots[[2]]$heights[4] +
  ##                               plots[[2]]$heights[5] +
  ##                               plots[[2]]$heights[6], "cm"))
})
