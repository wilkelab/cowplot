# Setup

## Platform

|setting  |value                        |
|:--------|:----------------------------|
|version  |R version 3.4.1 (2017-06-30) |
|system   |x86_64, darwin15.6.0         |
|ui       |RStudio (1.0.153)            |
|language |(EN)                         |
|collate  |en_US.UTF-8                  |
|tz       |America/Chicago              |
|date     |2017-07-29                   |

## Packages

|package |*  |version    |date       |source                      |
|:-------|:--|:----------|:----------|:---------------------------|
|cowplot |   |0.7.0.9990 |2017-07-30 |local (wilkelab/cowplot@NA) |

# Check results

2 packages with problems

|package |version | errors| warnings| notes|
|:-------|:-------|------:|--------:|-----:|
|DGCA    |1.0.1   |      1|        0|     0|
|poppr   |2.4.1   |      1|        0|     0|

## DGCA (1.0.1)
Maintainer: Andrew McKenzie <amckenz@gmail.com>

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Packages required but not available: ‘WGCNA’ ‘matrixStats’

Packages suggested but not available for checking:
  ‘impute’ ‘gplots’ ‘fdrtool’ ‘GOstats’ ‘HGNChelper’ ‘org.Hs.eg.db’
  ‘AnnotationDbi’ ‘abind’ ‘MEGENA’ ‘doMC’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```

## poppr (2.4.1)
Maintainer: Zhian N. Kamvar <zkamvar@gmail.com>  
Bug reports: https://github.com/grunwaldlab/poppr/issues

1 error  | 0 warnings | 0 notes

```
checking whether package ‘poppr’ can be installed ... ERROR
Installation failed.
See ‘/Users/wilke/github/cowplot/revdep/checks/poppr.Rcheck/00install.out’ for details.
```

