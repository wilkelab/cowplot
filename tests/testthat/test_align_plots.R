context("align_plots")

test_that("basic alignments, h, v, hv", {
  df <- data.frame(x = 1:3, y = 1:3, y2 = (1:3)^2)

  p1 <- ggplot(df, aes(x, y)) + geom_point()
  p2 <- ggplot(df, aes(x, y2)) + geom_point() + theme(plot.margin = margin())

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
  df <- data.frame(
    short = c("a", "b", "c"),
    long = c("aaaaaaaa", "bbbbbbbb", "ccccccccc"),
    x = 1:3
  )

  p1 <- ggplot(df, aes(short, x)) + geom_point()
  p2 <- ggplot(df, aes(short, x)) +
    geom_point() + facet_wrap(~long)

  # these plots cannot be aligned unless axes are specified
  expect_warning(align_plots(p1, p2, align = "v"))

  plots <- align_plots(p1, p2, align = "v", axis = "l")
  expect_equal(plots[[1]]$widths[1:3], plots[[2]]$widths[1:3])

  p3 <- ggplot(df, aes(short, x)) +
    geom_point() + facet_wrap(~long, ncol = 1)

  # these plots cannot be aligned unless axes are specified
  expect_warning(align_plots(p1, p3, align = "h"))

  plots <- align_plots(p1, p3, align = "h", axis = "bt")
  expect_equal(
    grid::convertUnit(plots[[1]]$heights[7:10] - plots[[2]]$heights[18:21], "cm"),
    grid::unit(c(0, 0, 0, 0), "cm")
  )

  # these units are only equal after we've added everything up
  expect_equal(
    grid::convertUnit(
      plots[[1]]$heights[1] +
      plots[[1]]$heights[2] +
      plots[[1]]$heights[3] +
      plots[[1]]$heights[4] +
      plots[[1]]$heights[5] +
      plots[[1]]$heights[6],
      "cm"
    ),
      grid::convertUnit(
        plots[[2]]$heights[1] +
        plots[[2]]$heights[2] +
        plots[[2]]$heights[3] +
        plots[[2]]$heights[4] +
        plots[[2]]$heights[5] +
        plots[[2]]$heights[6] +
        plots[[2]]$heights[7],
      "cm"
    )
  )
})
