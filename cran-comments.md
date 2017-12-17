This is a minor bugfix release that closes bugs related to plots showing up in the wrong places
in shiny apps and extra blank plots popping up in knitted documents.

## Test environments
* R devel on win-builder [ via devtools::build_win() ]
* local OS X install x86_64-apple-darwin15.6.0 (64-bit), R 3.4.2

## R CMD check results
There were no ERRORs, WARNINGs, or NOTEs.

## Downstream dependencies
Seem fine, according to devtools::revdep_check().
The packages with errors failed at the installation stage,
not because of cowplot.

Full results available at https://github.com/wilkelab/cowplot/blob/master/revdep/README.md

|package      |version | errors| warnings| notes|
|:------------|:-------|------:|--------:|-----:|
|bigstatsr    |0.2.3   |      1|        0|     0|
|deconvolveR  |1.0-3   |      0|        0|     0|
|DGCA         |1.0.1   |      1|        0|     0|
|ESTER        |0.2.0   |      0|        0|     0|
|ggpubr       |0.1.6   |      0|        0|     1|
|IncucyteDRC  |0.5.4   |      0|        0|     0|
|jtools       |0.9.0   |      0|        0|     1|
|JWileymisc   |0.2.1   |      0|        1|     0|
|meme         |0.1.1   |      0|        1|     1|
|memery       |0.3.1   |      0|        0|     0|
|modcmfitr    |0.1.0   |      0|        0|     0|
|oddsratio    |1.0.2   |      0|        0|     0|
|pcr          |1.1.0   |      0|        1|     0|
|poppr        |2.5.0   |      1|        0|     0|
|preText      |0.6.1   |      0|        0|     0|
|RNOmni       |0.1.4   |      0|        0|     0|
|scatr        |1.0.1   |      0|        0|     0|
|Seurat       |2.1.0   |      1|        0|     1|
|sicegar      |0.2.2   |      0|        0|     0|
|survivALL    |0.9.1   |      1|        0|     0|
|tadaatoolbox |0.15.0  |      0|        0|     0|
|valr         |0.3.1   |      0|        0|     1|
|vanddraabe   |1.0.0   |      0|        0|     0|
