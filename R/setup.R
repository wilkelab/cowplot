# *************************************************
#                     Setup
# *************************************************

.onAttach <- function(libname, pkgname) {
  # switch the default theme to theme_cowplot
  ggplot2::theme_set(theme_cowplot())
}
