context("get_legend")

# helper code to dig through grob trees to extract the title of a legend
extract_legend_title <- function(l) {
  grbs <- l$grobs[[1]]$grobs
  # grob holding legend title is the penultimate one
  g <- grbs[[length(grbs) - 1]]
  # return label
  g$children[[1]]$label
}


test_that("get legend", {
  df <- data.frame(x = 1:3, y = 1:3, z = factor(c("a", "b", "c")))
  p <- ggplot(df, aes(x, y, color = z)) + geom_point()

  l <- get_legend(p)

  expect_s3_class(l, "gtable")
  expect_equal(l$name, "guide-box")

  # return null legend if no legend
  expect_null(get_legend(p + theme(legend.position = "none")))

  # plot with multiple legends
  q <- p +
    aes(shape = 'a') +
    guides(
      color = guide_legend(position = "inside"),
      shape = guide_legend(position = "bottom")
    )


  ## these tests are not reliable across different ggplot2 and R versions
  ## as of this writing; try again later
  #l <- get_legend(q, "bottom")
  #expect_equal(extract_legend_title(l), "shape") # bottom legend is called "shape"
  #l <- get_legend(q, "inside")
  #expect_equal(extract_legend_title(l), "z") # inside legend is called "z"

  # top, right, left don't exist
  l <- get_legend(q, "top")
  expect_null(l)
  l <- get_legend(q, "right")
  expect_null(l)
  l <- get_legend(q, "left")
  expect_null(l)
})

