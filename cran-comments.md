This submission prepares cowplot for the upcoming ggplot2 2.2.0 release.

## Test environments
* R devel and R 3.3.1 on win-builder [ via devtools::build_win() ]
* local OS X install x86_64-apple-darwin15.6.0 (64-bit), R 3.4.1

## R CMD check results
There were no ERRORs or WARNINGs.

There is one NOTE, about spelling:
Possibly mis-spelled words in DESCRIPTION:
  Wilke (11:55)
  Wilke's (12:45)

Both spellings are correct.

## Downstream dependencies
All clear, according to devtools::revdep_check():

Checked IncucyteDRC : 0 errors | 0 warnings | 0 notes
Checked JWileymisc  : 0 errors | 0 warnings | 0 notes
Checked poppr       : 0 errors | 0 warnings | 0 notes
Checked preText     : 0 errors | 0 warnings | 1 note 
Checked rnrfa       : 0 errors | 0 warnings | 0 notes
Checked tadaatoolbox: 0 errors | 0 warnings | 1 note 

