# *************************************************
#                     Setup
# *************************************************

.onAttach <- function(libname, pkgname) {
  # switch the default theme to theme_cowplot
  # ggplot2::theme_set(theme_cowplot())
  packageStartupMessage("\n\n*******************************************************")
  packageStartupMessage("Note: cowplot does not change the default ggplot2 theme")
  packageStartupMessage("anymore. To recover the previous behavior, execute:\n  theme_set(theme_cowplot())")
  packageStartupMessage("*******************************************************\n")
}
