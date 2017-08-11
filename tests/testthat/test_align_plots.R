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
