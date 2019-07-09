# AneuFinder

<details>

* Version: 1.12.0
* Source code: https://github.com/cran/AneuFinder
* URL: https://github.com/ataudt/aneufinder.git
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 102

Run `revdep_details(,"AneuFinder")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    ...
    Subsetting specified chromosomes ... 0.01s
    Calculating coverage ... 0.14s
    Splitting into strands ... 0.03s
    Counting overlaps for binsize_1e+06 ... 0.06s
    Warning in bam2GRanges(file, bamindex, chromosomes = chromosomes, pairedEndReads = pairedEndReads,  :
      Not using chromosomes MMCHR1_RANDOM_CTG1, MMCHR1_RANDOM_CTG2, MMCHR1_RANDOM_CTG3, MMCHR1_RANDOM_CTG4, MMCHR1_RANDOM_CTG5, MMCHR4UN_CTG1, MMCHR4UN_CTG3, MMCHR4UN_CTG2, MMCHR4UN_CTG4, MMCHR4UN_CTG5, MMCHR4UN_CTG6, MMCHR5_RANDOM_CTG4, MMCHR5_RANDOM_CTG1, MMCHR5_RANDOM_CTG2, MMCHR5_RANDOM_CTG3, MMCHR5_RANDOM_CTG5, MMCHR7_RANDOM_CTG1, MMCHRX_RANDOM_CTG2, MMCHRY_CTGU1, MMCHRY_CTGU2, MMCHRY_CTGU3, MMCHRY_CTGU4, MSCHRUN_CTG1, MSCHRUN_CTG13, MSCHRUN_CTG14, MSCHRUN_CTG21, MSCHRUN_CTG2, MSCHRUN_CTG22, MSCHRUN_CTG19, MSCHRUN_CTG16, MSCHRUN_CTG3, MSCHRUN_CTG20, MSCHRUN_CTG4, MSCHRUN_CTG5, MSCHRUN_CTG6, MSCHRUN_CTG7, MSCHRUN_CTG17, MSCHRUN_CTG18, MSCHRUN_CTG9, MSCHRUN_CTG10, MSCHRUN_CTG11, MSCHRUN_CTG12, MSCHRUN_CTG15, MSCHRUN_CTG23 because they are not in the data.
    Reading file BB150803_IV_074.bam ... 0.15s
    Converting to GRanges ... 0.01s
    Filtering reads ... 0.01s
    Warning in binReads(file, assembly = assembly, min.mapq = min.mapq, pairedEndReads = pairedEndReads,  :
      Could not find chromosomes MMCHR1_RANDOM_CTG1, MMCHR1_RANDOM_CTG2, MMCHR1_RANDOM_CTG3, MMCHR1_RANDOM_CTG4, MMCHR1_RANDOM_CTG5, MMCHR4UN_CTG1, MMCHR4UN_CTG3, MMCHR4UN_CTG2, MMCHR4UN_CTG4, MMCHR4UN_CTG5, MMCHR4UN_CTG6, MMCHR5_RANDOM_CTG4, MMCHR5_RANDOM_CTG1, MMCHR5_RANDOM_CTG2, MMCHR5_RANDOM_CTG3, MMCHR5_RANDOM_CTG5, MMCHR7_RANDOM_CTG1, MMCHRX_RANDOM_CTG2, MMCHRY_CTGU1, MMCHRY_CTGU2, MMCHRY_CTGU3, MMCHRY_CTGU4, MSCHRUN_CTG1, MSCHRUN_CTG13, MSCHRUN_CTG14, MSCHRUN_CTG21, MSCHRUN_CTG2, MSCHRUN_CTG22, MSCHRUN_CTG19, MSCHRUN_CTG16, MSCHRUN_CTG3, MSCHRUN_CTG20, MSCHRUN_CTG4, MSCHRUN_CTG5, MSCHRUN_CTG6, MSCHRUN_CTG7, MSCHRUN_CTG17, MSCHRUN_CTG18, MSCHRUN_CTG9, MSCHRUN_CTG10, MSCHRUN_CTG11, MSCHRUN_CTG12, MSCHRUN_CTG15, MSCHRUN_CTG23.
    Subsetting specified chromosomes ... 0.01s
    Removing duplicate reads ... 0.05s
    Calculating coverage ... 0.15s
    Splitting into strands ... 0.01s
    Counting overlaps for binsize_1e+06 ... 0.06s
    > ## Plot a histogram to decide on a sensible cutoff
    > qplot(pre.blacklist$ratio, binwidth=0.1)
    Error in qplot(pre.blacklist$ratio, binwidth = 0.1) : 
      could not find function "qplot"
    Execution halted
    ```

## In both

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
* Number of recursive dependencies: 55

Run `revdep_details(,"foreSIGHT")` for more info

</details>

## Newly broken

*   checking whether package ‘foreSIGHT’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/foreSIGHT/new/foreSIGHT.Rcheck/00install.out’ for details.
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
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/foreSIGHT/new/foreSIGHT.Rcheck/foreSIGHT’

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
