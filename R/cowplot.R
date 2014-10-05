#' Default cowplot theme
#'
#' After loading the cowplot package, this theme will be the default
#' for all graphs made with ggplot2.
#' 
#' @param base_size The overall font size. Default is 14.
#' @return The theme.
#' @examples
#' qplot(1:10, 1:10^2) + theme_cow(base_size=16)
theme_cow <- function(base_size=14) ggplot2::theme_classic(base_size)


.onAttach <- function(libname, pkgname) {
    # switch the default theme to theme_cow
    ggplot2::theme_set(theme_cow())
}
