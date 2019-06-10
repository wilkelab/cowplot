# AneuFinder

<details>

* Version: 1.10.2
* Source code: https://github.com/cran/AneuFinder
* URL: https://github.com/ataudt/aneufinder.git
* Date/Publication: 2019-01-04
* Number of recursive dependencies: 101

Run `revdep_details(,"AneuFinder")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    ...
    Subsetting specified chromosomes ... 0.02s
    Calculating coverage ... 0.5s
    Splitting into strands ... 0.07s
    Counting overlaps for binsize_1e+06 ... 0.22s
    Warning in bam2GRanges(file, bamindex, chromosomes = chromosomes, pairedEndReads = pairedEndReads,  :
      Not using chromosomes MMCHR1_RANDOM_CTG1, MMCHR1_RANDOM_CTG2, MMCHR1_RANDOM_CTG3, MMCHR1_RANDOM_CTG4, MMCHR1_RANDOM_CTG5, MMCHR4UN_CTG1, MMCHR4UN_CTG3, MMCHR4UN_CTG2, MMCHR4UN_CTG4, MMCHR4UN_CTG5, MMCHR4UN_CTG6, MMCHR5_RANDOM_CTG4, MMCHR5_RANDOM_CTG1, MMCHR5_RANDOM_CTG2, MMCHR5_RANDOM_CTG3, MMCHR5_RANDOM_CTG5, MMCHR7_RANDOM_CTG1, MMCHRX_RANDOM_CTG2, MMCHRY_CTGU1, MMCHRY_CTGU2, MMCHRY_CTGU3, MMCHRY_CTGU4, MSCHRUN_CTG1, MSCHRUN_CTG13, MSCHRUN_CTG14, MSCHRUN_CTG21, MSCHRUN_CTG2, MSCHRUN_CTG22, MSCHRUN_CTG19, MSCHRUN_CTG16, MSCHRUN_CTG3, MSCHRUN_CTG20, MSCHRUN_CTG4, MSCHRUN_CTG5, MSCHRUN_CTG6, MSCHRUN_CTG7, MSCHRUN_CTG17, MSCHRUN_CTG18, MSCHRUN_CTG9, MSCHRUN_CTG10, MSCHRUN_CTG11, MSCHRUN_CTG12, MSCHRUN_CTG15, MSCHRUN_CTG23 because they are not in the data.
    Reading file BB150803_IV_074.bam ... 0.53s
    Converting to GRanges ... 0.01s
    Filtering reads ... 0.01s
    Warning in binReads(file, assembly = assembly, min.mapq = min.mapq, pairedEndReads = pairedEndReads,  :
      Could not find chromosomes MMCHR1_RANDOM_CTG1, MMCHR1_RANDOM_CTG2, MMCHR1_RANDOM_CTG3, MMCHR1_RANDOM_CTG4, MMCHR1_RANDOM_CTG5, MMCHR4UN_CTG1, MMCHR4UN_CTG3, MMCHR4UN_CTG2, MMCHR4UN_CTG4, MMCHR4UN_CTG5, MMCHR4UN_CTG6, MMCHR5_RANDOM_CTG4, MMCHR5_RANDOM_CTG1, MMCHR5_RANDOM_CTG2, MMCHR5_RANDOM_CTG3, MMCHR5_RANDOM_CTG5, MMCHR7_RANDOM_CTG1, MMCHRX_RANDOM_CTG2, MMCHRY_CTGU1, MMCHRY_CTGU2, MMCHRY_CTGU3, MMCHRY_CTGU4, MSCHRUN_CTG1, MSCHRUN_CTG13, MSCHRUN_CTG14, MSCHRUN_CTG21, MSCHRUN_CTG2, MSCHRUN_CTG22, MSCHRUN_CTG19, MSCHRUN_CTG16, MSCHRUN_CTG3, MSCHRUN_CTG20, MSCHRUN_CTG4, MSCHRUN_CTG5, MSCHRUN_CTG6, MSCHRUN_CTG7, MSCHRUN_CTG17, MSCHRUN_CTG18, MSCHRUN_CTG9, MSCHRUN_CTG10, MSCHRUN_CTG11, MSCHRUN_CTG12, MSCHRUN_CTG15, MSCHRUN_CTG23.
    Subsetting specified chromosomes ... 0.01s
    Removing duplicate reads ... 0.14s
    Calculating coverage ... 0.4s
    Splitting into strands ... 0.01s
    Counting overlaps for binsize_1e+06 ... 0.21s
    > ## Plot a histogram to decide on a sensible cutoff
    > qplot(pre.blacklist$ratio, binwidth=0.1)
    Error in qplot(pre.blacklist$ratio, binwidth = 0.1) : 
      could not find function "qplot"
    Execution halted
    ```

## Newly fixed

*   R CMD check timed out
    

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'BSgenome.Hsapiens.UCSC.hg19', 'BSgenome.Mmusculus.UCSC.mm10'
    ```

*   checking R code for possible problems ... NOTE
    ```
    Aneufinder: multiple local function definitions for ‘parallel.helper’
      with different formal arguments
    ```

# foreSIGHT

<details>

* Version: 0.9.6
* Source code: https://github.com/cran/foreSIGHT
* Date/Publication: 2018-07-10 08:00:26 UTC
* Number of recursive dependencies: 54

Run `revdep_details(,"foreSIGHT")` for more info

</details>

## Newly broken

*   checking whether package ‘foreSIGHT’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/wilke/github/cowplot/revdep/checks.noindex/foreSIGHT/new/foreSIGHT.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘foreSIGHT’ ...
** package ‘foreSIGHT’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Error: object ‘ggsave’ is not exported by 'namespace:cowplot'
Execution halted
ERROR: lazy loading failed for package ‘foreSIGHT’
* removing ‘/Users/wilke/github/cowplot/revdep/checks.noindex/foreSIGHT/new/foreSIGHT.Rcheck/foreSIGHT’

```
### CRAN

```
* installing *source* package ‘foreSIGHT’ ...
** package ‘foreSIGHT’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (foreSIGHT)

```
# scater

<details>

* Version: 1.10.1
* Source code: https://github.com/cran/scater
* URL: http://bioconductor.org/packages/scater/
* BugReports: https://support.bioconductor.org/
* Date/Publication: 2019-01-04
* Number of recursive dependencies: 223

Run `revdep_details(,"scater")` for more info

</details>

## Newly broken

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      22: namespaceImportFrom(ns, loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]), 
             i[[2L]], from = package)
      23: asNamespace(ns)
      24: loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]])
      25: runHook(".onLoad", env, package.lib, package)
      26: stop(gettextf("%s failed in %s() for '%s', details:\n  call: %s\n  error: %s", hookname, "loadNamespace", 
             pkgname, deparse(conditionCall(res))[1L], conditionMessage(res)), call. = FALSE, domain = NA)
      
      ══ testthat results  ══════════════════════════════════════════════════════════════════════════
      OK: 1140 SKIPPED: 0 WARNINGS: 45 FAILED: 2
      1. Error: nexprs responds to other options (@test-calc-nexprs.R#28) 
      2. Error: runPCA works as expected for QC metrics (@test-red-dim.R#114) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

## Newly fixed

*   R CMD check timed out
    

## In both

*   checking examples ... WARNING
    ```
    ...
    Found the following significant warnings:
    
      Warning: 'calcIsExprs' is deprecated.
      Warning: 'plotQC' is deprecated.
      Warning: 'add_ticks' is deprecated.
      Warning: 'add_ticks' is deprecated.
      Warning: 'add_ticks' is deprecated.
      Warning: 'add_ticks' is deprecated.
      Warning: 'add_ticks' is deprecated.
      Warning: 'add_ticks' is deprecated.
      Warning: 'add_ticks' is deprecated.
      Warning: 'add_ticks' is deprecated.
      Warning: 'add_ticks' is deprecated.
      Warning: 'add_ticks' is deprecated.
      Warning: 'add_ticks' is deprecated.
      Warning: 'readTxResults' is deprecated.
      Warning: 'summariseExprsAcrossFeatures' is deprecated.
      Warning: 'summariseExprsAcrossFeatures' is deprecated.
    Deprecated functions may be defunct as soon as of the next release of
    R.
    See ?Deprecated.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 10.6Mb
      sub-directories of 1Mb or more:
        doc    5.0Mb
        libs   4.9Mb
    ```

