## Test environments
* R-devel on win-builder [ via devtools::build_win(version = "R-devel") ]
* local OS X install x86_64-apple-darwin13.4.0 (64-bit), R 3.2.2

## R CMD check results
There were no ERRORs or WARNINGs.

There are two NOTEs, one under `checking R code for possible problems` and one under `checking dependencies in R code`. Both have the same cause, namely that I have added conditional code for the latest development version of ggplot2, of the form:
    if (utils::packageVersion("ggplot2")<="1.0.1"){
      # code for current stable version
    }
    else{
      # code for development version
    }
The code for the development version is using two attributes of `element_text` that don't exist in the current stable version: `margin` and `debug`. As a consequence, R CMD check generates notes of the form:
    theme_cowplot: possible error in element_text(family = font_family,
      face = "plain", colour = "black", size = font_size, hjust = 0.5,
      vjust = 0.5, angle = 0, lineheight = 0.9, margin = ggplot2::margin(),
      debug = FALSE): unused arguments (margin = ggplot2::margin(), debug =
      FALSE)

Similarly, the code for the development version is using a function `ggplot2::margin` which doesn't exist in the current stable version of ggplot2, and that causes this NOTE:
    * checking dependencies in R code ... NOTE
    Missing or unexported object: 'ggplot2::margin'

I have carefully tested this code many times with both the current stable version and the development version of ggplot2, and all examples and tests work fine for both versions. 

## Downstream dependencies
None exist at this time.
