# *************************************************
#                     Setup
# *************************************************

.onAttach <- function(libname, pkgname) {
  # switch the default theme to theme_cowplot
  ggplot2::theme_set(theme_cowplot())
}

.pt <- 1 / 0.352777778 # from ggplot2, file aaa-constants.r

.ggplot1.0 <- packageVersion("ggplot2")<="1.0.1" # for code conditional on ggplot2 version
