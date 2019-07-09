This is a major new release that provides numerous new features. It also fixes
a number of poor design choices that were made in earlier releases, such as 
attaching ggplot2 or reexporting ggplot2 functions with slightly altered behavior.
These fixes result in breaking changes for some downstream packages. However, all
problems in downstream packages should be easily fixable. Maintainers of downstream
packages were informed on June 9 of the impending submission of this version to
CRAN. They had a month to fix any issues they may have had.

## Test environments
* R devel on win-builder [ via devtools::check_win_devel() ]
* R devel and R release on Linux (via Travis CI)

## R CMD check results
There were no ERRORs or WARNINGs.

There was one NOTE:
The overall package size is 12.6Mb, of which 12.0Mb are in 
subdirectory doc. The package has extensive documentation with
many figures, and it is not possible to keep the vignettes smaller
while completely documenting all package features.

## Downstream dependencies
As stated above, a few packages break with this submission. All cases
where packages break are cases where the packages depend on bad previous
behavior of cowplot that has now been rectified.

Full results are available at https://github.com/wilkelab/cowplot/blob/master/revdep/README.md
