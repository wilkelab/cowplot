COWplot -- An add-on to the ggplot2 plotting package
====================================================

The cowplot package is meant to provide a publication-ready theme for ggplot2, one that requires a minimum amount of fiddling with sizes of axis labels, plot backgrounds, etc. It meets my personal needs; you may or may not like my style.

The package also fixes a couple of other annoyances that I encountered when trying to use ggplot2 for publication-ready figures, in particular with respect to combining multiple plots into one figure and labeling these plots. It turns out that the easiest way to fix these issues was to implement a general-purpose drawing canvas on top of ggplot2, so as a side effect of this work you can do pretty crazy effects with ggplot2 graphs.

To install this package, you need the devtools package. In your R console, simply enter:

    devtools::install_github("wilkelab/cowplot")

Note that cowplot is in the early stages of development. While you may find it useful for certain graphing problems you encounter, it may have major problems or undergo substantial changes in the near future. In particular, at this point I make no guarantees that the default theme will remain unchanged.
