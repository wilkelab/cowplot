# *************************************************
#                     Setup
# *************************************************

.onAttach <- function(libname, pkgname) {
  # switch the default theme to theme_cowplot
  # ggplot2::theme_set(theme_cowplot())
  #packageStartupMessage("\n********************************************************")
  #packageStartupMessage("Note: As of version 1.0.0, cowplot does not change the")
  #packageStartupMessage("  default ggplot2 theme anymore. To recover the previous")
  #packageStartupMessage("  behavior, execute:\n  theme_set(theme_cowplot())")
  #packageStartupMessage("********************************************************\n")
}
