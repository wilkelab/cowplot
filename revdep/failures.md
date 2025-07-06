# AneuFinder

<details>

* Version: 
* GitHub: https://github.com/wilkelab/cowplot
* Source code: NA
* Number of recursive dependencies: 0

</details>

## Error before installation

### Devel

```



installing the source packages ‘AneuFinderData’, ‘BSgenome.Hsapiens.UCSC.hg19’, ‘BSgenome.Mmusculus.UCSC.mm10’



```
### CRAN

```



installing the source packages ‘AneuFinderData’, ‘BSgenome.Hsapiens.UCSC.hg19’, ‘BSgenome.Mmusculus.UCSC.mm10’



```
# Banksy

<details>

* Version: 1.2.0
* GitHub: https://github.com/prabhakarlab/Banksy
* Source code: https://github.com/cran/Banksy
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 263

Run `revdepcheck::revdep_details(, "Banksy")` for more info

</details>

## In both

*   R CMD check timed out
    

*   checking installed package size ... NOTE
    ```
      installed size is  6.2Mb
      sub-directories of 1Mb or more:
        doc    3.7Mb
        help   1.4Mb
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) computeBanksy.Rd:81: Lost braces in \itemize; meant \describe ?
    ```

# bartMan

<details>

* Version: 0.1.1
* GitHub: NA
* Source code: https://github.com/cran/bartMan
* Date/Publication: 2024-07-24 12:10:02 UTC
* Number of recursive dependencies: 133

Run `revdepcheck::revdep_details(, "bartMan")` for more info

</details>

## In both

*   checking whether package ‘bartMan’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/bartMan/new/bartMan.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘bartMan’ ...
** package ‘bartMan’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** byte-compile and prepare package for lazy loading
The operation couldn’t be completed. Unable to locate a Java Runtime.
Please visit http://www.java.com for information on installing Java.

...
  running command '/usr/libexec/java_home' had status 1
Warning in fun(libname, pkgname) :
  Cannot find JVM library 'NA/lib/server/libjvm.dylib'
Install Java and/or check JAVA_HOME (if in doubt, do NOT set it, it will be detected)
Error: .onLoad failed in loadNamespace() for 'rJava', details:
  call: fun(libname, pkgname)
  error: JVM could not be found
Execution halted
ERROR: lazy loading failed for package ‘bartMan’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/bartMan/new/bartMan.Rcheck/bartMan’


```
### CRAN

```
* installing *source* package ‘bartMan’ ...
** package ‘bartMan’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** byte-compile and prepare package for lazy loading
The operation couldn’t be completed. Unable to locate a Java Runtime.
Please visit http://www.java.com for information on installing Java.

...
  running command '/usr/libexec/java_home' had status 1
Warning in fun(libname, pkgname) :
  Cannot find JVM library 'NA/lib/server/libjvm.dylib'
Install Java and/or check JAVA_HOME (if in doubt, do NOT set it, it will be detected)
Error: .onLoad failed in loadNamespace() for 'rJava', details:
  call: fun(libname, pkgname)
  error: JVM could not be found
Execution halted
ERROR: lazy loading failed for package ‘bartMan’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/bartMan/old/bartMan.Rcheck/bartMan’


```
# BASiCS

<details>

* Version: 2.18.0
* GitHub: https://github.com/catavallejos/BASiCS
* Source code: https://github.com/cran/BASiCS
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 195

Run `revdepcheck::revdep_details(, "BASiCS")` for more info

</details>

## In both

*   R CMD check timed out
    

*   checking whether package ‘BASiCS’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      ./utils.h:357:9: warning: use of bitwise '&' with boolean operands [-Wbitwise-instead-of-logical]
      ./utils.h:358:10: warning: use of bitwise '&' with boolean operands [-Wbitwise-instead-of-logical]
      ./updates.h:163:6: warning: use of bitwise '&' with boolean operands [-Wbitwise-instead-of-logical]
      ./updates.h:258:11: warning: use of bitwise '&' with boolean operands [-Wbitwise-instead-of-logical]
      ./updates.h:266:13: warning: use of bitwise '&' with boolean operands [-Wbitwise-instead-of-logical]
      ./updatesNoSpikes.h:76:11: warning: use of bitwise '&' with boolean operands [-Wbitwise-instead-of-logical]
      ./updatesNoSpikes.h:102:9: warning: use of bitwise '&' with boolean operands [-Wbitwise-instead-of-logical]
      ./updatesRegNoSpikes.h:107:10: warning: use of bitwise '&' with boolean operands [-Wbitwise-instead-of-logical]
      ./updatesRegNoSpikes.h:139:9: warning: use of bitwise '&' with boolean operands [-Wbitwise-instead-of-logical]
      ./MCMCReg.h:383:9: warning: use of bitwise '&' with boolean operands [-Wbitwise-instead-of-logical]
      ./MCMCRegNoSpikes.h:382:8: warning: use of bitwise '&' with boolean operands [-Wbitwise-instead-of-logical]
    See ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/BASiCS/new/BASiCS.Rcheck/00install.out’ for details.
    ```

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        data   2.0Mb
        doc    1.6Mb
    ```

# benchdamic

<details>

* Version: 1.12.2
* GitHub: https://github.com/mcalgaro93/benchdamic
* Source code: https://github.com/cran/benchdamic
* Date/Publication: 2025-01-02
* Number of recursive dependencies: 380

Run `revdepcheck::revdep_details(, "benchdamic")` for more info

</details>

## In both

*   R CMD check timed out
    

*   checking installed package size ... NOTE
    ```
      installed size is  8.6Mb
      sub-directories of 1Mb or more:
        doc   7.9Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘microbiome’
      All declared Imports should be used.
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) DA_Seurat.Rd:29-31: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) DA_Seurat.Rd:32: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) DA_Seurat.Rd:33-36: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) DA_Seurat.Rd:37: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) DA_Seurat.Rd:42-44: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) DA_Seurat.Rd:45-46: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) DA_Seurat.Rd:47-56: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) DA_Seurat.Rd:57-58: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) DA_Seurat.Rd:59-61: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) DA_Seurat.Rd:62-63: Lost braces in \itemize; meant \describe ?
    ...
    checkRd: (-1) set_Seurat.Rd:41-42: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) set_Seurat.Rd:43-45: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) set_Seurat.Rd:46-47: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) set_Seurat.Rd:48-51: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) set_Seurat.Rd:52-54: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) set_Seurat.Rd:55-57: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) set_Seurat.Rd:64-66: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) set_Seurat.Rd:67: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) set_Seurat.Rd:68-71: Lost braces in \itemize; meant \describe ?
    checkRd: (-1) set_Seurat.Rd:72: Lost braces in \itemize; meant \describe ?
    ```

# betaHMM

<details>

* Version: 1.2.1
* GitHub: NA
* Source code: https://github.com/cran/betaHMM
* Date/Publication: 2024-12-19
* Number of recursive dependencies: 100

Run `revdepcheck::revdep_details(, "betaHMM")` for more info

</details>

## In both

*   R CMD check timed out
    

# BloodCancerMultiOmics2017

<details>

* Version: 1.26.0
* GitHub: NA
* Source code: https://github.com/cran/BloodCancerMultiOmics2017
* Date/Publication: 2024-10-31
* Number of recursive dependencies: 233

Run `revdepcheck::revdep_details(, "BloodCancerMultiOmics2017")` for more info

</details>

## In both

*   R CMD check timed out
    

*   checking LazyData ... WARNING
    ```
      LazyData DB of 66.4 MB without LazyDataCompression set
      See §1.1.6 of 'Writing R Extensions'
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 117.2Mb
      sub-directories of 1Mb or more:
        data     81.8Mb
        doc      27.4Mb
        extdata   7.7Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    survplot: no visible binding for global variable ‘s’
    survplot: no visible binding for global variable ‘cox’
    Undefined global functions or variables:
      cox s
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘vsn’
    ```

# clustTMB

<details>

* Version: 0.1.0
* GitHub: https://github.com/Andrea-Havron/clustTMB
* Source code: https://github.com/cran/clustTMB
* Date/Publication: 2024-10-14 11:50:46 UTC
* Number of recursive dependencies: 152

Run `revdepcheck::revdep_details(, "clustTMB")` for more info

</details>

## In both

*   R CMD check timed out
    

# cola

<details>

* Version: 
* GitHub: https://github.com/wilkelab/cowplot
* Source code: NA
* Number of recursive dependencies: 0

</details>

## Error before installation

### Devel

```



installing the source packages ‘hu6800.db’, ‘reactome.db’



```
### CRAN

```



installing the source packages ‘hu6800.db’, ‘reactome.db’



```
# COTAN

<details>

* Version: 2.6.3
* GitHub: https://github.com/seriph78/COTAN
* Source code: https://github.com/cran/COTAN
* Date/Publication: 2025-02-27
* Number of recursive dependencies: 269

Run `revdepcheck::revdep_details(, "COTAN")` for more info

</details>

## In both

*   R CMD check timed out
    

*   checking installed package size ... NOTE
    ```
      installed size is 13.6Mb
      sub-directories of 1Mb or more:
        doc  11.8Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    'library' or 'require' call to ‘torch’ in package code.
      Please use :: or requireNamespace() instead.
      See section 'Suggested packages' in the 'Writing R Extensions' manual.
    Unexported object imported by a ':::' call: ‘ggplot2:::ggname’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    mergeUniformCellsClusters : fromMergedName: warning in
      vapply(currentClNames, function(clName, mergedName) {: partial
      argument match of 'FUN.VAL' to 'FUN.VALUE'
    mergeUniformCellsClusters : fromMergedName: warning in
      return(str_detect(mergedName, clName)): partial argument match of
      'FUN.VAL' to 'FUN.VALUE'
    mergeUniformCellsClusters : fromMergedName: warning in }, FUN.VAL =
      logical(1L), mergedClName): partial argument match of 'FUN.VAL' to
      'FUN.VALUE'
    GDIPlot: no visible binding for global variable ‘sum.raw.norm’
    ...
    heatmapPlot: no visible binding for global variable ‘coex’
    mitochondrialPercentagePlot: no visible binding for global variable
      ‘mit.percentage’
    scatterPlot: no visible binding for global variable ‘.x’
    screePlot: no visible binding for global variable ‘PC’
    screePlot: no visible binding for global variable ‘Variance’
    Undefined global functions or variables:
      .x CellNumber Cluster Condition ExpGenes GDI PC PC1 PC2 Variance coex
      g2 group keys means mit.percentage n nu obj sum.raw.norm type types
      values violinwidth width x xmax xmaxv xminv y
    ```

# fgsea

<details>

* Version: 
* GitHub: https://github.com/wilkelab/cowplot
* Source code: NA
* Number of recursive dependencies: 0

</details>

## Error before installation

### Devel

```



installing the source package ‘reactome.db’



```
### CRAN

```



installing the source package ‘reactome.db’



```
# FLAMES

<details>

* Version: 2.0.2
* GitHub: https://github.com/mritchielab/FLAMES
* Source code: https://github.com/cran/FLAMES
* Date/Publication: 2024-12-09
* Number of recursive dependencies: 259

Run `revdepcheck::revdep_details(, "FLAMES")` for more info

</details>

## In both

*   R CMD check timed out
    

*   checking whether package ‘FLAMES’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/FLAMES/new/FLAMES.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  7.3Mb
      sub-directories of 1Mb or more:
        data   2.7Mb
        doc    2.0Mb
        libs   1.5Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    create_spe: no visible binding for global variable 'barcode'
    filter_coverage: no visible global function definition for
      'starts_with'
    filter_coverage: no visible binding for global variable 'filter_res'
    find_barcode: no visible binding for global variable 'Sample'
    find_barcode: no visible binding for global variable 'Outfile'
    find_variants_grange: no visible binding for global variable
      'which_label'
    find_variants_grange: no visible binding for global variable
      'nucleotide'
    ...
      filter_res gene_id head imageX imageY input label length_bin
      max_length min_length multi-matching reads mutation_index n_reads
      name nucleotide output pct pos read1_with_adapter read_counts ref
      region single match reads starts_with total reads total_counts tr_id
      tr_length transcript type undemultiplexted reads value which_label x
      y
    Consider adding
      importFrom("base", "match", "single")
      importFrom("utils", "head")
    to your NAMESPACE file.
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# GenomicPlot

<details>

* Version: 1.4.0
* GitHub: https://github.com/shuye2009/GenomicPlot
* Source code: https://github.com/cran/GenomicPlot
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 219

Run `revdepcheck::revdep_details(, "GenomicPlot")` for more info

</details>

## In both

*   R CMD check timed out
    

*   checking installed package size ... NOTE
    ```
      installed size is  6.3Mb
      sub-directories of 1Mb or more:
        doc   5.0Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    get_targeted_genes: no visible binding for global variable ‘5'UTR’
    get_targeted_genes: no visible binding for global variable ‘3'UTR’
    handle_bam: no visible global function definition for ‘seqlevelsStyle’
    handle_bam: no visible global function definition for
      ‘seqlevelsStyle<-’
    handle_bed: no visible global function definition for ‘seqlevelsStyle’
    handle_bed: no visible global function definition for
      ‘seqlevelsStyle<-’
    handle_bedGraph: no visible global function definition for
      ‘seqlevelsStyle’
    handle_bedGraph: no visible global function definition for
      ‘seqlevelsStyle<-’
    handle_bw: no visible global function definition for ‘seqlevelsStyle’
    handle_bw: no visible global function definition for ‘seqlevelsStyle<-’
    plot_bam_correlation: no visible binding for global variable ‘.’
    plot_peak_annotation: no visible binding for global variable ‘.’
    Undefined global functions or variables:
      . 3'UTR 5'UTR seqlevelsStyle seqlevelsStyle<-
    ```

# GeoMxWorkflows

<details>

* Version: 1.12.0
* GitHub: NA
* Source code: https://github.com/cran/GeoMxWorkflows
* Date/Publication: 2024-11-01
* Number of recursive dependencies: 139

Run `revdepcheck::revdep_details(, "GeoMxWorkflows")` for more info

</details>

## In both

*   R CMD check timed out
    

*   checking installed package size ... NOTE
    ```
      installed size is 68.4Mb
      sub-directories of 1Mb or more:
        doc      11.2Mb
        extdata  57.1Mb
    ```

*   checking DESCRIPTION meta-information ... NOTE
    ```
    License components which are templates and need '+ file LICENSE':
      MIT
    ```

*   checking top-level files ... NOTE
    ```
    File
      LICENSE
    is not mentioned in the DESCRIPTION file.
    ```

# graper

<details>

* Version: 1.22.0
* GitHub: NA
* Source code: https://github.com/cran/graper
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 67

Run `revdepcheck::revdep_details(, "graper")` for more info

</details>

## In both

*   checking whether package ‘graper’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/graper/new/graper.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘graper’ ...
** package ‘graper’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘Apple clang version 15.0.0 (clang-1500.0.40.1)’
using C++11
using SDK: ‘MacOSX15.0.sdk’
clang++ -arch arm64 -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I'/Users/clauswilke/github/cowplot/revdep/library.noindex/graper/Rcpp/include' -I'/Users/clauswilke/github/cowplot/revdep/library.noindex/graper/RcppArmadillo/include' -I'/Users/clauswilke/github/cowplot/revdep/library.noindex/graper/BH/include' -I/opt/R/arm64/include    -fPIC  -falign-functions=64 -Wall -g -O2   -c RcppExports.cpp -o RcppExports.o
clang++ -arch arm64 -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I'/Users/clauswilke/github/cowplot/revdep/library.noindex/graper/Rcpp/include' -I'/Users/clauswilke/github/cowplot/revdep/library.noindex/graper/RcppArmadillo/include' -I'/Users/clauswilke/github/cowplot/revdep/library.noindex/graper/BH/include' -I/opt/R/arm64/include    -fPIC  -falign-functions=64 -Wall -g -O2   -c fit_graper.cpp -o fit_graper.o
In file included from fit_graper.cpp:4:
...
using std::decay_t;
      ~~~~~^
/Users/clauswilke/github/cowplot/revdep/library.noindex/graper/BH/include/boost/math/tools/type_traits.hpp:301:12: error: no member named 'enable_if_t' in namespace 'std'
using std::enable_if_t;
      ~~~~~^
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated.
make: *** [fit_graper.o] Error 1
ERROR: compilation failed for package ‘graper’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/graper/new/graper.Rcheck/graper’


```
### CRAN

```
* installing *source* package ‘graper’ ...
** package ‘graper’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘Apple clang version 15.0.0 (clang-1500.0.40.1)’
using C++11
using SDK: ‘MacOSX15.0.sdk’
clang++ -arch arm64 -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I'/Users/clauswilke/github/cowplot/revdep/library.noindex/graper/Rcpp/include' -I'/Users/clauswilke/github/cowplot/revdep/library.noindex/graper/RcppArmadillo/include' -I'/Users/clauswilke/github/cowplot/revdep/library.noindex/graper/BH/include' -I/opt/R/arm64/include    -fPIC  -falign-functions=64 -Wall -g -O2   -c RcppExports.cpp -o RcppExports.o
clang++ -arch arm64 -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I'/Users/clauswilke/github/cowplot/revdep/library.noindex/graper/Rcpp/include' -I'/Users/clauswilke/github/cowplot/revdep/library.noindex/graper/RcppArmadillo/include' -I'/Users/clauswilke/github/cowplot/revdep/library.noindex/graper/BH/include' -I/opt/R/arm64/include    -fPIC  -falign-functions=64 -Wall -g -O2   -c fit_graper.cpp -o fit_graper.o
In file included from fit_graper.cpp:4:
...
using std::decay_t;
      ~~~~~^
/Users/clauswilke/github/cowplot/revdep/library.noindex/graper/BH/include/boost/math/tools/type_traits.hpp:301:12: error: no member named 'enable_if_t' in namespace 'std'
using std::enable_if_t;
      ~~~~~^
fatal error: too many errors emitted, stopping now [-ferror-limit=]
1 warning and 20 errors generated.
make: *** [fit_graper.o] Error 1
ERROR: compilation failed for package ‘graper’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/graper/old/graper.Rcheck/graper’


```
# HiLDA

<details>

* Version: 1.20.0
* GitHub: https://github.com/USCbiostats/HiLDA
* Source code: https://github.com/cran/HiLDA
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 132

Run `revdepcheck::revdep_details(, "HiLDA")` for more info

</details>

## In both

*   checking whether package ‘HiLDA’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/HiLDA/new/HiLDA.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘HiLDA’ ...
** package ‘HiLDA’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘Apple clang version 15.0.0 (clang-1500.0.40.1)’
using SDK: ‘MacOSX15.0.sdk’
clang++ -arch arm64 -std=gnu++17 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I'/Users/clauswilke/github/cowplot/revdep/library.noindex/HiLDA/Rcpp/include' -I/opt/R/arm64/include    -fPIC  -falign-functions=64 -Wall -g -O2   -c EMalgorithm.cpp -o EMalgorithm.o
clang++ -arch arm64 -std=gnu++17 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I'/Users/clauswilke/github/cowplot/revdep/library.noindex/HiLDA/Rcpp/include' -I/opt/R/arm64/include    -fPIC  -falign-functions=64 -Wall -g -O2   -c RcppExports.cpp -o RcppExports.o
clang++ -arch arm64 -std=gnu++17 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I'/Users/clauswilke/github/cowplot/revdep/library.noindex/HiLDA/Rcpp/include' -I/opt/R/arm64/include    -fPIC  -falign-functions=64 -Wall -g -O2   -c checkBoundary.cpp -o checkBoundary.o
clang++ -arch arm64 -std=gnu++17 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I'/Users/clauswilke/github/cowplot/revdep/library.noindex/HiLDA/Rcpp/include' -I/opt/R/arm64/include    -fPIC  -falign-functions=64 -Wall -g -O2   -c convertFromToVector.cpp -o convertFromToVector.o
...
** byte-compile and prepare package for lazy loading
Error: .onLoad failed in loadNamespace() for 'rjags', details:
  call: dyn.load(file, DLLpath = DLLpath, ...)
  error: unable to load shared object '/Users/clauswilke/github/cowplot/revdep/library.noindex/HiLDA/rjags/libs/rjags.so':
  dlopen(/Users/clauswilke/github/cowplot/revdep/library.noindex/HiLDA/rjags/libs/rjags.so, 0x000A): Library not loaded: /usr/local/lib/libjags.4.dylib
  Referenced from: <CAF5E1DC-317A-34FE-988A-FB6F7C73D89E> /Users/clauswilke/github/cowplot/revdep/library.noindex/HiLDA/rjags/libs/rjags.so
  Reason: tried: '/usr/local/lib/libjags.4.dylib' (no such file), '/System/Volumes/Preboot/Cryptexes/OS/usr/local/lib/libjags.4.dylib' (no such file), '/usr/local/lib/libjags.4.dylib' (no such file), '/Library/Frameworks/R.framework/Resources/lib/libjags.4.dylib' (no such file), '/Library/Java/JavaVirtualMachines/jdk-11.0.18+10/Contents/Home/lib/server/libjags.4.dylib' (no such file)
Execution halted
ERROR: lazy loading failed for package ‘HiLDA’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/HiLDA/new/HiLDA.Rcheck/HiLDA’


```
### CRAN

```
* installing *source* package ‘HiLDA’ ...
** package ‘HiLDA’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘Apple clang version 15.0.0 (clang-1500.0.40.1)’
using SDK: ‘MacOSX15.0.sdk’
clang++ -arch arm64 -std=gnu++17 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I'/Users/clauswilke/github/cowplot/revdep/library.noindex/HiLDA/Rcpp/include' -I/opt/R/arm64/include    -fPIC  -falign-functions=64 -Wall -g -O2   -c EMalgorithm.cpp -o EMalgorithm.o
clang++ -arch arm64 -std=gnu++17 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I'/Users/clauswilke/github/cowplot/revdep/library.noindex/HiLDA/Rcpp/include' -I/opt/R/arm64/include    -fPIC  -falign-functions=64 -Wall -g -O2   -c RcppExports.cpp -o RcppExports.o
clang++ -arch arm64 -std=gnu++17 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I'/Users/clauswilke/github/cowplot/revdep/library.noindex/HiLDA/Rcpp/include' -I/opt/R/arm64/include    -fPIC  -falign-functions=64 -Wall -g -O2   -c checkBoundary.cpp -o checkBoundary.o
clang++ -arch arm64 -std=gnu++17 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I'/Users/clauswilke/github/cowplot/revdep/library.noindex/HiLDA/Rcpp/include' -I/opt/R/arm64/include    -fPIC  -falign-functions=64 -Wall -g -O2   -c convertFromToVector.cpp -o convertFromToVector.o
...
** byte-compile and prepare package for lazy loading
Error: .onLoad failed in loadNamespace() for 'rjags', details:
  call: dyn.load(file, DLLpath = DLLpath, ...)
  error: unable to load shared object '/Users/clauswilke/github/cowplot/revdep/library.noindex/HiLDA/rjags/libs/rjags.so':
  dlopen(/Users/clauswilke/github/cowplot/revdep/library.noindex/HiLDA/rjags/libs/rjags.so, 0x000A): Library not loaded: /usr/local/lib/libjags.4.dylib
  Referenced from: <CAF5E1DC-317A-34FE-988A-FB6F7C73D89E> /Users/clauswilke/github/cowplot/revdep/library.noindex/HiLDA/rjags/libs/rjags.so
  Reason: tried: '/usr/local/lib/libjags.4.dylib' (no such file), '/System/Volumes/Preboot/Cryptexes/OS/usr/local/lib/libjags.4.dylib' (no such file), '/usr/local/lib/libjags.4.dylib' (no such file), '/Library/Frameworks/R.framework/Resources/lib/libjags.4.dylib' (no such file), '/Library/Java/JavaVirtualMachines/jdk-11.0.18+10/Contents/Home/lib/server/libjags.4.dylib' (no such file)
Execution halted
ERROR: lazy loading failed for package ‘HiLDA’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/HiLDA/old/HiLDA.Rcheck/HiLDA’


```
# LipinskiFilters

<details>

* Version: 1.0.1
* GitHub: NA
* Source code: https://github.com/cran/LipinskiFilters
* Date/Publication: 2024-03-11 15:20:05 UTC
* Number of recursive dependencies: 54

Run `revdepcheck::revdep_details(, "LipinskiFilters")` for more info

</details>

## In both

*   checking whether package ‘LipinskiFilters’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/LipinskiFilters/new/LipinskiFilters.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘LipinskiFilters’ ...
** package ‘LipinskiFilters’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
The operation couldn’t be completed. Unable to locate a Java Runtime.
Please visit http://www.java.com for information on installing Java.

Error: package or namespace load failed for ‘rJava’:
...
  error: JVM could not be found
In addition: Warning messages:
1: In system("/usr/libexec/java_home", intern = TRUE) :
  running command '/usr/libexec/java_home' had status 1
2: In fun(libname, pkgname) :
  Cannot find JVM library 'NA/lib/server/libjvm.dylib'
Install Java and/or check JAVA_HOME (if in doubt, do NOT set it, it will be detected)
Execution halted
ERROR: lazy loading failed for package ‘LipinskiFilters’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/LipinskiFilters/new/LipinskiFilters.Rcheck/LipinskiFilters’


```
### CRAN

```
* installing *source* package ‘LipinskiFilters’ ...
** package ‘LipinskiFilters’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
The operation couldn’t be completed. Unable to locate a Java Runtime.
Please visit http://www.java.com for information on installing Java.

Error: package or namespace load failed for ‘rJava’:
...
  error: JVM could not be found
In addition: Warning messages:
1: In system("/usr/libexec/java_home", intern = TRUE) :
  running command '/usr/libexec/java_home' had status 1
2: In fun(libname, pkgname) :
  Cannot find JVM library 'NA/lib/server/libjvm.dylib'
Install Java and/or check JAVA_HOME (if in doubt, do NOT set it, it will be detected)
Execution halted
ERROR: lazy loading failed for package ‘LipinskiFilters’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/LipinskiFilters/old/LipinskiFilters.Rcheck/LipinskiFilters’


```
# MAPFX

<details>

* Version: 1.2.0
* GitHub: https://github.com/HsiaoChiLiao/MAPFX
* Source code: https://github.com/cran/MAPFX
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 191

Run `revdepcheck::revdep_details(, "MAPFX")` for more info

</details>

## In both

*   R CMD check timed out
    

# methodical

<details>

* Version: 1.2.0
* GitHub: https://github.com/richardheery/methodical
* Source code: https://github.com/cran/methodical
* Date/Publication: 2024-12-26
* Number of recursive dependencies: 222

Run `revdepcheck::revdep_details(, "methodical")` for more info

</details>

## In both

*   R CMD check timed out
    

*   checking Rd \usage sections ... WARNING
    ```
    Documented arguments not in \usage in Rd file 'calculateMethSiteTranscriptCors.Rd':
      ‘expand_upstream’ ‘expand_downstream’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  5.6Mb
      sub-directories of 1Mb or more:
        data      2.7Mb
        doc       1.3Mb
        extdata   1.3Mb
    ```

*   checking top-level files ... NOTE
    ```
    File
      LICENSE
    is not mentioned in the DESCRIPTION file.
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘AnnotationHub’ ‘BSgenome.Hsapiens.UCSC.hg19’
      ‘BSgenome.Hsapiens.UCSC.hg38’ ‘BiocCheck’ ‘BiocManager’ ‘BiocStyle’
      ‘MatrixGenerics’ ‘TumourMethData’ ‘annotatr’ ‘devtools’ ‘knitr’
      ‘rcmdcheck’ ‘remotes’ ‘usethis’
      All declared Imports should be used.
    Unexported object imported by a ':::' call: ‘HDF5Array:::.serialize_HDF5SummarizedExperiment’
      See the note in ?`:::` about the use of this operator.
    There are ::: calls to the package's namespace in its code. A package
      almost never needs to use ::: for its own objects:
      ‘.chunk_regions’
    ```

*   checking R code for possible problems ... NOTE
    ```
    .calculate_regions_intersections: no visible global function definition
      for ‘is’
    .chunk_regions: no visible global function definition for ‘is’
    .chunk_regions: no visible global function definition for
      ‘subsetByOverlaps’
    .count_covered_bases: no visible global function definition for ‘is’
    .create_meth_rse_from_hdf5: no visible global function definition for
      ‘setNames’
    .expand_transcript_ranges: no visible binding for global variable
      ‘transcript_name’
    ...
      region_type seqlengths seqlevels seqnames_column setNames
      start_column subsetByOverlaps temp_chunk_dirs total_files
      transcript_name value_column zero_based
    Consider adding
      importFrom("grDevices", "colorRampPalette")
      importFrom("methods", "is")
      importFrom("stats", "complete.cases", "cor", "p.adjust",
                 "p.adjust.methods", "pt", "setNames")
    to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
    contains 'methods').
    ```

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) kallistoQuantify.Rd:34: Lost braces; missing escapes or markup?
        34 | {merged_output_prefix}_counts_merged.tsv.gz and {merged_output_prefix}_tpm_merged.tsv.gz. Default prefix is "kallisto_transcript" i.e. default output merged output files are
           | ^
    checkRd: (-1) kallistoQuantify.Rd:34: Lost braces; missing escapes or markup?
        34 | {merged_output_prefix}_counts_merged.tsv.gz and {merged_output_prefix}_tpm_merged.tsv.gz. Default prefix is "kallisto_transcript" i.e. default output merged output files are
           |                                                 ^
    ```

# miloR

<details>

* Version: 2.2.0
* GitHub: https://github.com/MarioniLab/miloR
* Source code: https://github.com/cran/miloR
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 209

Run `revdepcheck::revdep_details(, "miloR")` for more info

</details>

## In both

*   R CMD check timed out
    

*   checking installed package size ... NOTE
    ```
      installed size is 11.2Mb
      sub-directories of 1Mb or more:
        data   1.8Mb
        doc    7.9Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: ‘S4Vectors:::disableValidity’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    plotDAbeeswarm: no visible binding for global variable ‘SpatialFDR’
    plotDAbeeswarm: no visible binding for global variable ‘logFC’
    plotDAbeeswarm: no visible binding for global variable ‘is_signif’
    plotDAbeeswarm: no visible binding for global variable ‘Nhood’
    plotDAbeeswarm: no visible binding for global variable ‘logFC_color’
    plotNhoodCounts: no visible binding for global variable ‘cond’
    plotNhoodCounts: no visible binding for global variable ‘values’
    plotNhoodCounts: no visible binding for global variable ‘y’
    plotNhoodExpressionDA: no visible binding for global variable ‘Nhood’
    plotNhoodExpressionDA: no visible binding for global variable ‘logFC’
    ...
    plotNhoodMA: no visible binding for global variable ‘Sig’
    plotNhoodSizeHist: no visible binding for global variable ‘nh_size’
    testNhoods: no visible global function definition for ‘type’
    Undefined global functions or variables:
      . Nhood NhoodGroup Sig SpatialFDR avg_expr cond feature is_signif
      label layout logCPM logFC logFC_color logFC_rank nh_size size type
      values weight y
    Consider adding
      importFrom("graphics", "layout")
    to your NAMESPACE file.
    ```

# RCAS

<details>

* Version: 1.32.0
* GitHub: NA
* Source code: https://github.com/cran/RCAS
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 164

Run `revdepcheck::revdep_details(, "RCAS")` for more info

</details>

## In both

*   R CMD check timed out
    

# rliger

<details>

* Version: 
* GitHub: https://github.com/wilkelab/cowplot
* Source code: NA
* Number of recursive dependencies: 0

</details>

## Error before installation

### Devel

```



installing the source package ‘reactome.db’



```
### CRAN

```



installing the source package ‘reactome.db’



```
# scGPS

<details>

* Version: 
* GitHub: https://github.com/wilkelab/cowplot
* Source code: NA
* Number of recursive dependencies: 0

</details>

## Error before installation

### Devel

```



installing the source package ‘reactome.db’



```
### CRAN

```



installing the source package ‘reactome.db’



```
# seqpac

<details>

* Version: 1.6.0
* GitHub: https://github.com/Danis102/seqpac
* Source code: https://github.com/cran/seqpac
* Date/Publication: 2024-11-01
* Number of recursive dependencies: 206

Run `revdepcheck::revdep_details(, "seqpac")` for more info

</details>

## In both

*   R CMD check timed out
    

*   checking installed package size ... NOTE
    ```
      installed size is  5.5Mb
      sub-directories of 1Mb or more:
        doc       1.9Mb
        extdata   2.7Mb
    ```

# spatialLIBD

<details>

* Version: 1.18.0
* GitHub: https://github.com/LieberInstitute/spatialLIBD
* Source code: https://github.com/cran/spatialLIBD
* Date/Publication: 2024-11-07
* Number of recursive dependencies: 219

Run `revdepcheck::revdep_details(, "spatialLIBD")` for more info

</details>

## Newly broken

*   R CMD check timed out
    

## Newly fixed

*   checking examples ... ERROR
    ```
    Running examples in ‘spatialLIBD-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: add_images
    > ### Title: Add non-standard images with the same dimensions as current ones
    > ### Aliases: add_images
    > 
    > ### ** Examples
    > 
    > if (enough_ram()) {
    ...
    +         image_id_current = "lowres",
    +         image_id = "lowres_aws",
    +         image_paths = c("151507" = "https://spatial-dlpfc.s3.us-east-2.amazonaws.com/images/151507_tissue_lowres_image.png")
    +     ))
    + }
    Error in value[[3L]](cond) : failed to connect
      reason: Timeout was reached [bioconductor.org]: Connection timed out after 10002 milliseconds
      Consider rerunning with 'localHub=TRUE'
    Calls: fetch_data ... tryCatch -> tryCatchList -> tryCatchOne -> <Anonymous>
    Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 27.7Mb
      sub-directories of 1Mb or more:
        doc   23.3Mb
        help   3.7Mb
    ```

# SpatialOmicsOverlay

<details>

* Version: 1.6.0
* GitHub: NA
* Source code: https://github.com/cran/SpatialOmicsOverlay
* Date/Publication: 2024-10-29
* Number of recursive dependencies: 176

Run `revdepcheck::revdep_details(, "SpatialOmicsOverlay")` for more info

</details>

## In both

*   checking whether package ‘SpatialOmicsOverlay’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/SpatialOmicsOverlay/new/SpatialOmicsOverlay.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘SpatialOmicsOverlay’ ...
** package ‘SpatialOmicsOverlay’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
The operation couldn’t be completed. Unable to locate a Java Runtime.
Please visit http://www.java.com for information on installing Java.

Warning in system("/usr/libexec/java_home", intern = TRUE) :
...
  running command '/usr/libexec/java_home' had status 1
Warning in fun(libname, pkgname) :
  Cannot find JVM library 'NA/lib/server/libjvm.dylib'
Install Java and/or check JAVA_HOME (if in doubt, do NOT set it, it will be detected)
Error: .onLoad failed in loadNamespace() for 'rJava', details:
  call: fun(libname, pkgname)
  error: JVM could not be found
Execution halted
ERROR: lazy loading failed for package ‘SpatialOmicsOverlay’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/SpatialOmicsOverlay/new/SpatialOmicsOverlay.Rcheck/SpatialOmicsOverlay’


```
### CRAN

```
* installing *source* package ‘SpatialOmicsOverlay’ ...
** package ‘SpatialOmicsOverlay’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
The operation couldn’t be completed. Unable to locate a Java Runtime.
Please visit http://www.java.com for information on installing Java.

Warning in system("/usr/libexec/java_home", intern = TRUE) :
...
  running command '/usr/libexec/java_home' had status 1
Warning in fun(libname, pkgname) :
  Cannot find JVM library 'NA/lib/server/libjvm.dylib'
Install Java and/or check JAVA_HOME (if in doubt, do NOT set it, it will be detected)
Error: .onLoad failed in loadNamespace() for 'rJava', details:
  call: fun(libname, pkgname)
  error: JVM could not be found
Execution halted
ERROR: lazy loading failed for package ‘SpatialOmicsOverlay’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/SpatialOmicsOverlay/old/SpatialOmicsOverlay.Rcheck/SpatialOmicsOverlay’


```
# TestAnaAPP

<details>

* Version: 1.1.2
* GitHub: https://github.com/jiangyouxiang/TestAnaAPP
* Source code: https://github.com/cran/TestAnaAPP
* Date/Publication: 2024-11-09 04:00:02 UTC
* Number of recursive dependencies: 259

Run `revdepcheck::revdep_details(, "TestAnaAPP")` for more info

</details>

## In both

*   checking whether package ‘TestAnaAPP’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/TestAnaAPP/new/TestAnaAPP.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘TestAnaAPP’ ...
** package ‘TestAnaAPP’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘OpenMx’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘TestAnaAPP’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/TestAnaAPP/new/TestAnaAPP.Rcheck/TestAnaAPP’


```
### CRAN

```
* installing *source* package ‘TestAnaAPP’ ...
** package ‘TestAnaAPP’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘OpenMx’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘TestAnaAPP’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/TestAnaAPP/old/TestAnaAPP.Rcheck/TestAnaAPP’


```
# text

<details>

* Version: 1.5
* GitHub: https://github.com/OscarKjell/text
* Source code: https://github.com/cran/text
* Date/Publication: 2025-05-02 12:00:02 UTC
* Number of recursive dependencies: 192

Run `revdepcheck::revdep_details(, "text")` for more info

</details>

## In both

*   checking whether package ‘text’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/text/new/text.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘text’ ...
** package ‘text’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
The operation couldn’t be completed. Unable to locate a Java Runtime.
Please visit http://www.java.com for information on installing Java.
...
  running command '/usr/libexec/java_home' had status 1
Warning in fun(libname, pkgname) :
  Cannot find JVM library 'NA/lib/server/libjvm.dylib'
Install Java and/or check JAVA_HOME (if in doubt, do NOT set it, it will be detected)
Error: .onLoad failed in loadNamespace() for 'rJava', details:
  call: fun(libname, pkgname)
  error: JVM could not be found
Execution halted
ERROR: lazy loading failed for package ‘text’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/text/new/text.Rcheck/text’


```
### CRAN

```
* installing *source* package ‘text’ ...
** package ‘text’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
The operation couldn’t be completed. Unable to locate a Java Runtime.
Please visit http://www.java.com for information on installing Java.
...
  running command '/usr/libexec/java_home' had status 1
Warning in fun(libname, pkgname) :
  Cannot find JVM library 'NA/lib/server/libjvm.dylib'
Install Java and/or check JAVA_HOME (if in doubt, do NOT set it, it will be detected)
Error: .onLoad failed in loadNamespace() for 'rJava', details:
  call: fun(libname, pkgname)
  error: JVM could not be found
Execution halted
ERROR: lazy loading failed for package ‘text’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/text/old/text.Rcheck/text’


```
# tidybayes

<details>

* Version: 3.0.7
* GitHub: https://github.com/mjskay/tidybayes
* Source code: https://github.com/cran/tidybayes
* Date/Publication: 2024-09-15 06:20:02 UTC
* Number of recursive dependencies: 193

Run `revdepcheck::revdep_details(, "tidybayes")` for more info

</details>

## In both

*   R CMD check timed out
    

# valse

<details>

* Version: 0.1-0
* GitHub: NA
* Source code: https://github.com/cran/valse
* Date/Publication: 2021-05-31 08:00:02 UTC
* Number of recursive dependencies: 51

Run `revdepcheck::revdep_details(, "valse")` for more info

</details>

## In both

*   checking whether package ‘valse’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/valse/new/valse.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘valse’ ...
** package ‘valse’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C compiler: ‘Apple clang version 15.0.0 (clang-1500.0.40.1)’
using SDK: ‘MacOSX15.0.sdk’
clang -arch arm64 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG   -I/opt/R/arm64/include    -fPIC  -falign-functions=64 -Wall -g -O2  -c EMGLLF.c -o EMGLLF.o
EMGLLF.c:4:10: fatal error: 'gsl/gsl_linalg.h' file not found
#include <gsl/gsl_linalg.h>
         ^~~~~~~~~~~~~~~~~~
1 error generated.
make: *** [EMGLLF.o] Error 1
ERROR: compilation failed for package ‘valse’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/valse/new/valse.Rcheck/valse’


```
### CRAN

```
* installing *source* package ‘valse’ ...
** package ‘valse’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C compiler: ‘Apple clang version 15.0.0 (clang-1500.0.40.1)’
using SDK: ‘MacOSX15.0.sdk’
clang -arch arm64 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG   -I/opt/R/arm64/include    -fPIC  -falign-functions=64 -Wall -g -O2  -c EMGLLF.c -o EMGLLF.o
EMGLLF.c:4:10: fatal error: 'gsl/gsl_linalg.h' file not found
#include <gsl/gsl_linalg.h>
         ^~~~~~~~~~~~~~~~~~
1 error generated.
make: *** [EMGLLF.o] Error 1
ERROR: compilation failed for package ‘valse’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/valse/old/valse.Rcheck/valse’


```
# variancePartition

<details>

* Version: 1.36.3
* GitHub: https://github.com/DiseaseNeuroGenomics/variancePartition
* Source code: https://github.com/cran/variancePartition
* Date/Publication: 2025-01-09
* Number of recursive dependencies: 199

Run `revdepcheck::revdep_details(, "variancePartition")` for more info

</details>

## In both

*   R CMD check timed out
    

*   checking whether package ‘variancePartition’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: package ‘BiocParallel’ was built under R version 4.4.3
    See ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/variancePartition/new/variancePartition.Rcheck/00install.out’ for details.
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.5Mb
      sub-directories of 1Mb or more:
        data   1.3Mb
        doc    6.0Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: ‘lmerTest:::as_lmerModLT’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking Rd \usage sections ... NOTE
    ```
    S3 methods shown with full name in Rd file 'residuals.MArrayLM2.Rd':
      ‘residuals.MArrayLM2’
    
    The \usage entries for S3 methods should use the \method markup and not
    their full name.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking files in ‘vignettes’ ... NOTE
    ```
    The following directory looks like a leftover from 'knitr':
      ‘figure’
    Please remove from your package.
    ```

*   checking for unstated dependencies in vignettes ... NOTE
    ```
    'library' or 'require' calls not declared from:
      ‘GSEABase’ ‘doParallel’
    ```

