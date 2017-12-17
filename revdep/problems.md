# Setup

## Platform

|setting  |value                        |
|:--------|:----------------------------|
|version  |R version 3.4.2 (2017-09-28) |
|system   |x86_64, darwin15.6.0         |
|ui       |RStudio (1.0.153)            |
|language |(EN)                         |
|collate  |en_US.UTF-8                  |
|tz       |America/Chicago              |
|date     |2017-12-16                   |

## Packages

|package  |*  |version |date       |source                      |
|:--------|:--|:-------|:----------|:---------------------------|
|covr     |   |3.0.1   |2017-11-07 |cran (@3.0.1)               |
|cowplot  |   |0.9.2   |2017-12-16 |local (wilkelab/cowplot@NA) |
|dplyr    |   |0.7.4   |2017-09-28 |cran (@0.7.4)               |
|ggplot2  |   |2.2.1   |2016-12-30 |cran (@2.2.1)               |
|gtable   |   |0.2.0   |2016-02-26 |cran (@0.2.0)               |
|knitr    |   |1.17    |2017-08-10 |cran (@1.17)                |
|magick   |   |1.6     |2017-12-01 |cran (@1.6)                 |
|maps     |   |3.2.0   |2017-06-08 |cran (@3.2.0)               |
|plyr     |   |1.8.4   |2016-06-08 |cran (@1.8.4)               |
|scales   |   |0.5.0   |2017-08-24 |cran (@0.5.0)               |
|testthat |   |2.0.0   |2017-12-13 |cran (@2.0.0)               |
|tidyr    |   |0.7.2   |2017-10-16 |cran (@0.7.2)               |
|vdiffr   |   |0.2.1   |2017-10-09 |cran (@0.2.1)               |
|viridis  |   |0.4.0   |2017-03-27 |cran (@0.4.0)               |

# Check results

8 packages with problems

|package    |version | errors| warnings| notes|
|:----------|:-------|------:|--------:|-----:|
|bigstatsr  |0.2.3   |      1|        0|     0|
|DGCA       |1.0.1   |      1|        0|     0|
|JWileymisc |0.2.1   |      0|        1|     0|
|meme       |0.1.1   |      0|        1|     1|
|pcr        |1.1.0   |      0|        1|     0|
|poppr      |2.5.0   |      1|        0|     0|
|Seurat     |2.1.0   |      1|        0|     1|
|survivALL  |0.9.1   |      1|        0|     0|

## bigstatsr (0.2.3)
Maintainer: Florian Privé <florian.prive.21@gmail.com>  
Bug reports: https://github.com/privefl/bigstatsr/issues

1 error  | 0 warnings | 0 notes

```
checking whether package ‘bigstatsr’ can be installed ... ERROR
Installation failed.
See ‘/Users/wilke/github/cowplot/revdep/checks/bigstatsr.Rcheck/00install.out’ for details.
```

## DGCA (1.0.1)
Maintainer: Andrew McKenzie <amckenz@gmail.com>

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Package required but not available: ‘WGCNA’

Packages suggested but not available for checking:
  ‘impute’ ‘fdrtool’ ‘GOstats’ ‘HGNChelper’ ‘org.Hs.eg.db’
  ‘AnnotationDbi’ ‘MEGENA’ ‘doMC’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```

## JWileymisc (0.2.1)
Maintainer: Joshua F. Wiley <jwiley.psych@gmail.com>  
Bug reports: https://github.com/JWiley/JWileymisc/issues

0 errors | 1 warning  | 0 notes

```
checking whether package ‘JWileymisc’ can be installed ... WARNING
Found the following significant warnings:
  Warning: package ‘foreach’ was built under R version 3.4.3
See ‘/Users/wilke/github/cowplot/revdep/checks/JWileymisc.Rcheck/00install.out’ for details.
```

## meme (0.1.1)
Maintainer: Guangchuang Yu <guangchuangyu@gmail.com>  
Bug reports: https://github.com/GuangchuangYu/meme/issues

0 errors | 1 warning  | 1 note 

```
checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
Quitting from lines 167-177 (meme.Rmd) 
Error: processing vignette 'meme.Rmd' failed with diagnostics:
unused argument (data = d)
Execution halted


checking installed package size ... NOTE
  installed size is  5.4Mb
  sub-directories of 1Mb or more:
    doc   4.9Mb
```

## pcr (1.1.0)
Maintainer: Mahmoud Ahmed <mahmoud.s.fahmy@students.kasralainy.edu.eg>  
Bug reports: https://github.com/MahShaaban/pcr/issues

0 errors | 1 warning  | 0 notes

```
checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
Joining, by = c("group", "gene")
Joining, by = c("group", "gene")
Joining, by = "gene"
Joining, by = c("group", "gene")
Joining, by = c("group", "gene")
Parsed with column specification:
cols(
... 8 lines ...
! LaTeX Error: \caption outside float.

See the LaTeX manual or LaTeX Companion for explanation.
Type  H <return>  for immediate help.
 ...                                              
                                                  
l.528 \caption

Error: processing vignette 'qpcr_analysis.Rmd' failed with diagnostics:
pandoc document conversion failed with error 43
Execution halted
```

## poppr (2.5.0)
Maintainer: Zhian N. Kamvar <zkamvar@gmail.com>  
Bug reports: https://github.com/grunwaldlab/poppr/issues

1 error  | 0 warnings | 0 notes

```
checking whether package ‘poppr’ can be installed ... ERROR
Installation failed.
See ‘/Users/wilke/github/cowplot/revdep/checks/poppr.Rcheck/00install.out’ for details.
```

## Seurat (2.1.0)
Maintainer: Paul Hoffman <seuratpackage@gmail.com>  
Bug reports: https://github.com/satijalab/seurat/issues

1 error  | 0 warnings | 1 note 

```
checking whether package ‘Seurat’ can be installed ... ERROR
Installation failed.
See ‘/Users/wilke/github/cowplot/revdep/checks/Seurat.Rcheck/00install.out’ for details.

checking package dependencies ... NOTE
Packages suggested but not available for checking:
  ‘SummarizedExperiment’ ‘MAST’ ‘DESeq2’
```

## survivALL (0.9.1)
Maintainer: Dominic Pearce <dominic.pearce@ed.ac.uk>

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Packages required but not available:
  ‘survcomp’ ‘survsim’ ‘Biobase’ ‘desiR’ ‘pander’

Package suggested but not available for checking: ‘GGally’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```

