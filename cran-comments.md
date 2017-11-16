This is a major improvement that fixes numerous bugs and adds two substantial new features.

## Test environments
* R devel and R 3.4.2 on win-builder [ via devtools::build_win() ]
* local OS X install x86_64-apple-darwin15.6.0 (64-bit), R 3.4.2

## R CMD check results
There were no ERRORs or WARNINGs.

There is one NOTE, about spelling:
Possibly mis-spelled words in DESCRIPTION:
  Wilke (11:55)
  Wilke's (12:45)

Both spellings are correct.

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
