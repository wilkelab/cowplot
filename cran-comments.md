The package version I submitted yesterday did not build successfully when the magick package wasn't installed: https://cran.r-project.org/web/checks/check_results_cowplot.html This submission fixes that issue.

I have also fixed the problem (noted yesterday) of examples that take longer than 10s to run. No other changes were made.

## Test environments
* R devel on win-builder [ via devtools::build_win() ]
* local OS X install x86_64-apple-darwin15.6.0 (64-bit), R 3.4.2

## R CMD check results
There were no ERRORs or WARNINGs.

There was one NOTE:
Days since last update: 0

I'm resubmitting so quickly because I received a request to do so by Brian Ripley:

"You have added Suggests: magick but not used it conditionally as required in §1.1.3.1 of the manual.

ImageMagick is a large install; moreover the C++ interface which 'magick' unnecessarily requires is not normally installed.

Please correct ASAP once all the results are in."


## Downstream dependencies
Seem fine, according to devtools::revdep_check().
The packages with errors failed at the installation stage,
not because of cowplot.

Full results available at https://github.com/wilkelab/cowplot/blob/master/revdep/README.md

21 packages

|package      |version | errors| warnings| notes|
|:------------|:-------|------:|--------:|-----:|
|bigstatsr    |0.2.2   |      1|        0|     0|
|deconvolveR  |1.0-3   |      0|        0|     0|
|DGCA         |1.0.1   |      1|        0|     0|
|ggpubr       |0.1.6   |      0|        0|     1|
|IncucyteDRC  |0.5.4   |      0|        0|     0|
|jtools       |0.9.0   |      0|        0|     1|
|JWileymisc   |0.2.1   |      0|        0|     0|
|meme         |0.0.7   |      0|        0|     0|
|memery       |0.3.1   |      0|        0|     0|
|modcmfitr    |0.1.0   |      0|        0|     0|
|oddsratio    |1.0.0   |      0|        0|     0|
|pcr          |1.0.1   |      0|        0|     0|
|poppr        |2.5.0   |      1|        0|     0|
|preText      |0.6.1   |      0|        0|     0|
|RNOmni       |0.1.3   |      0|        0|     0|
|Seurat       |2.1.0   |      1|        0|     1|
|sicegar      |0.2.2   |      0|        0|     0|
|survivALL    |0.9.1   |      1|        0|     0|
|tadaatoolbox |0.14.0  |      0|        0|     1|
|valr         |0.3.1   |      0|        0|     1|
|vanddraabe   |1.0.0   |      0|        0|     0|
