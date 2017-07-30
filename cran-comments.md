This is a major improvement that fixes numerous bugs and adds two substantial new features.

## Test environments
* R devel and R 3.4.1 on win-builder [ via devtools::build_win() ]
* local OS X install x86_64-apple-darwin15.6.0 (64-bit), R 3.4.1

## R CMD check results
There were no ERRORs or WARNINGs.

There is one NOTE, about spelling:
Possibly mis-spelled words in DESCRIPTION:
  Wilke (11:55)
  Wilke's (12:45)

Both spellings are correct.

## Downstream dependencies
Seem fine, according to devtools::revdep_check().
The two packages with errors failed at the installation stage,
not because of cowplot.

Full results available at https://github.com/wilkelab/cowplot/blob/master/revdep/README.md

13 packages

|package      |version | errors| warnings| notes|
|:------------|:-------|------:|--------:|-----:|
|deconvolveR  |1.0-3   |      0|        0|     0|
|DGCA         |1.0.1   |      1|        0|     0|
|ggjoy        |0.2.0   |      0|        0|     0|
|ggpubr       |0.1.4   |      0|        0|     0|
|IncucyteDRC  |0.5.4   |      0|        0|     0|
|jtools       |0.4.5   |      0|        0|     1|
|JWileymisc   |0.2.1   |      0|        0|     0|
|oddsratio    |1.0.0   |      0|        0|     0|
|poppr        |2.4.1   |      1|        0|     0|
|preText      |0.6.0   |      0|        0|     0|
|sicegar      |0.2     |      0|        0|     0|
|tadaatoolbox |0.13.0  |      0|        0|     1|
|valr         |0.3.1   |      0|        0|     1|
