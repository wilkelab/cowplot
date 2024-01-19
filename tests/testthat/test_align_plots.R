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
  n <- vapply(plots, ncol, integer(1))
  expect_equal(plots[[1]]$widths[n[1] - 3:0], plots[[2]]$widths[n[2] - 3:0])

  # with greedy = TRUE, only the sums of the widths are equal
  plots <- align_plots(p1, p2, align = "v", axis = "l", greedy = TRUE)   # align left
  expect_equal(
    grid::convertUnit(sum(plots[[1]]$widths[1:4]), "in"),
    grid::convertUnit(sum(plots[[2]]$widths[1:4]), "in")
  )

  plots <- align_plots(p1, p2, align = "v", axis = "r", greedy = TRUE)   # align right
  n <- vapply(plots, ncol, integer(1))
  expect_equal(
    grid::convertUnit(sum(plots[[1]]$widths[n[1] - 3:0]), "in"),
    grid::convertUnit(sum(plots[[2]]$widths[n[2] - 3:0]), "in")
  )


  p3 <- ggplot(df, aes(short, x)) +
    geom_point() + facet_wrap(~long, ncol = 1)

  # these plots cannot be aligned unless axes are specified
  expect_warning(align_plots(p1, p3, align = "h"))

  plots <- align_plots(p1, p3, align = "h", axis = "bt", greedy = FALSE)
  n <- vapply(plots, nrow, integer(1))
  expect_equal(
    grid::convertUnit(plots[[1]]$heights[n[1] - 3:0] - plots[[2]]$heights[n[2] - 3:0], "cm"),
    grid::unit(c(0, 0, 0, 0), "cm")
  )

  # these units are only equal after we've added everything up
  rows <- c(panel_rows(plots[[1]])$t[1], panel_rows(plots[[2]])$t[1]) - 1
  expect_equal(
    grid::convertUnit(sum(plots[[1]]$heights[1:rows[1]]), "cm"),
    grid::convertUnit(sum(plots[[2]]$heights[1:rows[2]]), "cm")
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
  n <- vapply(plots, ncol, integer(1))
  expect_equal(
    grid::convertUnit(sum(plots[[1]]$widths[n[1] - 5:0]), "in"),
    grid::convertUnit(sum(plots[[2]]$widths[n[2] - 3:0]), "in")
  )
  plots <- align_plots(p1, NULL, p2, p3, align = "v", axis = "r", greedy = FALSE)  # align right
  n <- vapply(plots, NCOL, integer(1))
  expect_equal(
    grid::convertUnit(sum(plots[[1]]$widths[n[1] - 5:0]), "in"),
    grid::convertUnit(sum(plots[[3]]$widths[n[3] - 3:0]), "in")
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
  n <- vapply(plots, ncol, integer(1))
  expect_equal(
    grid::convertUnit(sum(plots[[1]]$widths[n[1] - 5:0]), "in"),
    grid::convertUnit(sum(plots[[2]]$widths[n[2] - 3:0]), "in")
  )
  plots <- align_plots(p1, NULL, p2, align = "v", axis = "r", greedy = TRUE)   # align right
  n <- vapply(plots, NCOL, integer(1))
  expect_equal(
    grid::convertUnit(sum(plots[[1]]$widths[n[1] - 5:0]), "in"),
    grid::convertUnit(sum(plots[[3]]$widths[n[3] - 3:0]), "in")
  )

  dev.off()
})
