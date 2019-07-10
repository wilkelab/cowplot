Update: Package size has been reduced to meet the 5Mb limit.

This is a major new release that provides numerous new features. It also fixes
several poor design choices that were made in earlier releases, such as 
attaching ggplot2 or reexporting ggplot2 functions with slightly altered behavior.
These fixes result in breaking changes for some downstream packages. However, all
problems in downstream packages should be easily fixable. Maintainers of downstream
packages were informed on June 9 of the impending submission of this version to
CRAN. They had a month to fix any issues with their packages.

## Test environments
* R devel on win-builder [ via devtools::check_win_devel() ]
* R devel and R release on Linux (via Travis CI)

## R CMD check results
There were no ERRORs, WARNINGs, or NOTEs.

## Downstream dependencies
As stated above, a few packages break with this submission. In all cases
I have found, breaking packages depend on poor design choices made in
previous releases of cowplot. For example, packages depend on cowplot
attaching ggplot2 instead of attaching ggplot2 themselves.

Full revdep results are available at: https://github.com/wilkelab/cowplot/blob/master/revdep/README.md
