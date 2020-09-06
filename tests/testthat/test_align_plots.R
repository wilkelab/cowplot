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
  # we need a graphics device open to perform unit conversion,
  # otherwise we get an empty plot file
  pdf(NULL)

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

  # with greedy = FALSE, all widths are equal
  plots <- align_plots(p1, p2, align = "v", axis = "l", greedy = FALSE)  # align left
  expect_equal(plots[[1]]$widths[1:4], plots[[2]]$widths[1:4])

  plots <- align_plots(p1, p2, align = "v", axis = "r", greedy = FALSE)  # align right
  expect_equal(plots[[1]]$widths[6:9], plots[[2]]$widths[14:17])

  # with greedy = TRUE, only the sums of the widths are equal
  plots <- align_plots(p1, p2, align = "v", axis = "l", greedy = TRUE)   # align left
  expect_equal(
    grid::convertUnit(sum(plots[[1]]$widths[1:4]), "in"),
    grid::convertUnit(sum(plots[[2]]$widths[1:4]), "in")
  )

  plots <- align_plots(p1, p2, align = "v", axis = "r", greedy = TRUE)   # align right
  expect_equal(
    grid::convertUnit(sum(plots[[1]]$widths[6:9]), "in"),
    grid::convertUnit(sum(plots[[2]]$widths[14:17]), "in")
  )


  p3 <- ggplot(df, aes(short, x)) +
    geom_point() + facet_wrap(~long, ncol = 1)

  # these plots cannot be aligned unless axes are specified
  expect_warning(align_plots(p1, p3, align = "h"))

  plots <- align_plots(p1, p3, align = "h", axis = "bt", greedy = FALSE)
  expect_equal(
    grid::convertUnit(plots[[1]]$heights[7:10] - plots[[2]]$heights[18:21], "cm"),
    grid::unit(c(0, 0, 0, 0), "cm")
  )

  # these units are only equal after we've added everything up
  expect_equal(
    grid::convertUnit(sum(plots[[1]]$heights[1:6]), "cm"),
    grid::convertUnit(sum(plots[[2]]$heights[1:7]), "cm")
  )
  dev.off()
})


test_that("complex alignments with non-plots", {
  # we need a graphics device open to perform unit conversion,
  # otherwise we get an empty plot file
  pdf(NULL)

  df <- data.frame(
    short = c("a", "b", "c"),
    long = c("aaaaaaaa", "bbbbbbbb", "ccccccccc"),
    x = 1:3
  )

  p1 <- ggplot(df, aes(short, x, color = short)) + geom_point()
  p2 <- ggplot(df, aes(short, x)) +
    geom_point() + facet_wrap(~long)
  p3 <- get_legend(p1)

  # with greedy = FALSE, all widths are equal
  plots <- align_plots(p1, p2, p3, align = "v", axis = "l", greedy = FALSE)  # align left
  expect_equal(plots[[1]]$widths[1:4], plots[[2]]$widths[1:4])
  plots <- align_plots(p1, NULL, p2, p3, align = "v", axis = "l", greedy = FALSE)  # align left
  expect_equal(plots[[1]]$widths[1:4], plots[[3]]$widths[1:4])

  # because p1 has a legend and p2 doesn't, only the sums of the widths are equal for right align
  plots <- align_plots(p1, p2, p3, align = "v", axis = "r", greedy = FALSE)  # align right
  expect_equal(
    grid::convertUnit(sum(plots[[1]]$widths[6:11]), "in"),
    grid::convertUnit(sum(plots[[2]]$widths[14:17]), "in")
  )
  plots <- align_plots(p1, NULL, p2, p3, align = "v", axis = "r", greedy = FALSE)  # align right
  expect_equal(
    grid::convertUnit(sum(plots[[1]]$widths[6:11]), "in"),
    grid::convertUnit(sum(plots[[3]]$widths[14:17]), "in")
  )

  # with greedy = TRUE, only the sums of the widths are equal
  plots <- align_plots(p1, p2, p3, align = "v", axis = "l", greedy = TRUE)   # align left
  expect_equal(
    grid::convertUnit(sum(plots[[1]]$widths[1:4]), "in"),
    grid::convertUnit(sum(plots[[2]]$widths[1:4]), "in")
  )
  plots <- align_plots(p1, NULL, p2, p3, align = "v", axis = "l", greedy = TRUE)   # align left
  expect_equal(
    grid::convertUnit(sum(plots[[1]]$widths[1:4]), "in"),
    grid::convertUnit(sum(plots[[3]]$widths[1:4]), "in")
  )

  plots <- align_plots(p1, p2, p3, align = "v", axis = "r", greedy = TRUE)   # align right
  expect_equal(
    grid::convertUnit(sum(plots[[1]]$widths[6:11]), "in"),
    grid::convertUnit(sum(plots[[2]]$widths[14:17]), "in")
  )
  plots <- align_plots(p1, NULL, p2, align = "v", axis = "r", greedy = TRUE)   # align right
  expect_equal(
    grid::convertUnit(sum(plots[[1]]$widths[6:11]), "in"),
    grid::convertUnit(sum(plots[[3]]$widths[14:17]), "in")
  )

  dev.off()
})
