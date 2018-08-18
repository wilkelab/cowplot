enable_vdiffr <- TRUE

expect_doppelganger <- function(title, fig,
                                path = NULL,
                                ...,
                                user_fonts = NULL,
                                verbose = FALSE) {
  if (!enable_vdiffr) {
    # expectation here is that figure can be built but we don't
    # check how it looks
    expect_error(regexp = NA, ggplot2::ggplot_build(fig))
    return(invisible(NULL))
  }

  stop("calling vdiffr function")

  vdiffr::expect_doppelganger(title, fig,
                              path = path,
                              ...,
                              user_fonts = user_fonts,
                              verbose = verbose
  )
}
