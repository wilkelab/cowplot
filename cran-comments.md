This release fixes the errors currently shown on
https://cran.r-project.org/web/checks/check_results_cowplot.html

The errors are due to regression tests that break for ggplot2 3.0.0. These regression tests have been fixed. No other changes have been made to the package.

## Test environments
* R devel on win-builder [ via devtools::build_win() ]
* local OS X install x86_64-apple-darwin15.6.0 (64-bit), R 3.5.0

## R CMD check results
There were no ERRORs, WARNINGs, or NOTEs.

## Downstream dependencies
Downstream dependencies are not affected, because changes were made only in the regression tests.
