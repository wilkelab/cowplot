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
|date     |2017-11-15                   |

## Packages

|package |*  |version |date       |source                      |
|:-------|:--|:-------|:----------|:---------------------------|
|covr    |   |3.0.1   |2017-11-07 |cran (@3.0.1)               |
|cowplot |   |0.9.0   |2017-11-15 |local (wilkelab/cowplot@NA) |
|dplyr   |*  |0.7.4   |2017-09-28 |cran (@0.7.4)               |
|magick  |   |1.5     |2017-11-03 |cran (@1.5)                 |
|tidyr   |*  |0.7.2   |2017-10-16 |cran (@0.7.2)               |
|vdiffr  |   |0.2.1   |2017-10-09 |cran (@0.2.1)               |

# Check results

5 packages with problems

|package   |version | errors| warnings| notes|
|:---------|:-------|------:|--------:|-----:|
|bigstatsr |0.2.2   |      1|        0|     0|
|DGCA      |1.0.1   |      1|        0|     0|
|poppr     |2.5.0   |      1|        0|     0|
|Seurat    |2.1.0   |      1|        0|     1|
|survivALL |0.9.1   |      1|        0|     0|

## bigstatsr (0.2.2)
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
Packages required but not available: ‘WGCNA’ ‘matrixStats’

Packages suggested but not available for checking:
  ‘impute’ ‘fdrtool’ ‘GOstats’ ‘HGNChelper’ ‘org.Hs.eg.db’
  ‘AnnotationDbi’ ‘MEGENA’ ‘doMC’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
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
  ‘survcomp’ ‘survsim’ ‘Biobase’ ‘desiR’ ‘ggthemes’ ‘pander’

Package suggested but not available for checking: ‘GGally’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```

