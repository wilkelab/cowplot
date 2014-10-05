theme_cow <- function() theme_classic(base_size=14)

ggplot <- function(...) ggplot(...) + theme_cow()

qplot <- function(...) qplot(...) + theme_cow()
