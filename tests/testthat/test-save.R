test_that("save_plot leaves the null graphics device selected", {
  null_device <- grDevices::dev.cur()
  if (null_device != 1L) {
    skip("A graphics device is already active.")
  }

  output <- tempfile(fileext = ".pdf")
  old <- options(device = function(...) grDevices::pdf(file = NULL))
  on.exit({
    grDevices::graphics.off()
    options(old)
    unlink(output)
  }, add = TRUE)

  save_plot(output, ggplot2::ggplot())

  expect_true(file.exists(output))
  expect_identical(grDevices::dev.cur(), null_device)
})
