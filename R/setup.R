# *************************************************
#                     Setup
# *************************************************

.onAttach <- function(libname, pkgname) {
  # switch the default theme to theme_cowplot
  # ggplot2::theme_set(theme_cowplot())
  message("Note: cowplot does not change the default theme anymore.")
  message("To recover the previous behavior, execute: theme_set(theme_cowplot())")
}
