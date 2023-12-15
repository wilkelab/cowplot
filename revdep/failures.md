# ClassifyR

<details>

* Version: 3.6.2
* GitHub: NA
* Source code: https://github.com/cran/ClassifyR
* Date/Publication: 2023-11-10
* Number of recursive dependencies: 189

Run `revdepcheck::revdep_details(, "ClassifyR")` for more info

</details>

## In both

*   R CMD check timed out
    

*   checking whether package ‘ClassifyR’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      coxformatrices.cpp:528:5: warning: 'register' storage class specifier is deprecated and incompatible with C++17 [-Wdeprecated-register]
      coxformatrices.cpp:529:5: warning: 'register' storage class specifier is deprecated and incompatible with C++17 [-Wdeprecated-register]
      coxformatrices.cpp:569:5: warning: 'register' storage class specifier is deprecated and incompatible with C++17 [-Wdeprecated-register]
      coxformatrices.cpp:570:5: warning: 'register' storage class specifier is deprecated and incompatible with C++17 [-Wdeprecated-register]
      coxformatrices.cpp:656:5: warning: 'register' storage class specifier is deprecated and incompatible with C++17 [-Wdeprecated-register]
      coxformatrices.cpp:657:5: warning: 'register' storage class specifier is deprecated and incompatible with C++17 [-Wdeprecated-register]
      Warning: package ‘S4Vectors’ was built under R version 4.3.2
      Warning: package ‘MultiAssayExperiment’ was built under R version 4.3.2
      Warning: package ‘SummarizedExperiment’ was built under R version 4.3.2
    See ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/ClassifyR/new/ClassifyR.Rcheck/00install.out’ for details.
    ```

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘ggupset’
      All declared Imports should be used.
    ```

*   checking R code for possible problems ... NOTE
    ```
    .addUserLevels: no visible binding for global variable ‘median’
    .dmvnorm_diag: no visible global function definition for ‘dnorm’
    .doSelection : <anonymous> : <anonymous>: no visible global function
      definition for ‘setNames’
    .doSelection : <anonymous> : <anonymous>: no visible global function
      definition for ‘na.omit’
    .doSelection : <anonymous> : <anonymous>: no visible global function
      definition for ‘median’
    .doSelection : <anonymous>: no visible binding for global variable
      ‘trainParams’
    ...
      real samplesTiers sd second setNames size splinefun test
      testingMatrix top trainParams trainingMatrix trueClass type unqiue
      upper useFeatures value var
    Consider adding
      importFrom("base", "grouping")
      importFrom("stats", "aggregate", "chisq.test", "density", "dist",
                 "dnorm", "glm", "mad", "median", "model.matrix", "na.omit",
                 "pnorm", "prcomp", "predict", "quantile", "quasibinomial",
                 "sd", "setNames", "splinefun", "var")
    to your NAMESPACE file.
    ```

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
# CoSMoS

<details>

* Version: 2.1.0
* GitHub: https://github.com/TycheLab/CoSMoS
* Source code: https://github.com/cran/CoSMoS
* Date/Publication: 2021-05-29 23:20:08 UTC
* Number of recursive dependencies: 84

Run `revdepcheck::revdep_details(, "CoSMoS")` for more info

</details>

## In both

*   checking whether package ‘CoSMoS’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/CoSMoS/new/CoSMoS.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘CoSMoS’ ...
** package ‘CoSMoS’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
tcltk DLL is linked to '/opt/X11/lib/libX11.6.dylib'
Error: .onLoad failed in loadNamespace() for 'tcltk', details:
  call: fun(libname, pkgname)
  error: X11 library is missing: install XQuartz from www.xquartz.org
Execution halted
ERROR: lazy loading failed for package ‘CoSMoS’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/CoSMoS/new/CoSMoS.Rcheck/CoSMoS’


```
### CRAN

```
* installing *source* package ‘CoSMoS’ ...
** package ‘CoSMoS’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
tcltk DLL is linked to '/opt/X11/lib/libX11.6.dylib'
Error: .onLoad failed in loadNamespace() for 'tcltk', details:
  call: fun(libname, pkgname)
  error: X11 library is missing: install XQuartz from www.xquartz.org
Execution halted
ERROR: lazy loading failed for package ‘CoSMoS’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/CoSMoS/old/CoSMoS.Rcheck/CoSMoS’


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
# GenomicPlot

<details>

* Version: 1.0.0
* GitHub: https://github.com/shuye2009/GenomicPlot
* Source code: https://github.com/cran/GenomicPlot
* Date/Publication: 2023-10-30
* Number of recursive dependencies: 220

Run `revdepcheck::revdep_details(, "GenomicPlot")` for more info

</details>

## In both

*   checking whether package ‘GenomicPlot’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/GenomicPlot/new/GenomicPlot.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘GenomicPlot’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Warning message:
package ‘S4Vectors’ was built under R version 4.3.2 
Warning: replacing previous import ‘Biostrings::pattern’ by ‘grid::pattern’ when loading ‘genomation’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘ggseqlogo’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘GenomicPlot’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/GenomicPlot/new/GenomicPlot.Rcheck/GenomicPlot’


```
### CRAN

```
* installing *source* package ‘GenomicPlot’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Warning message:
package ‘S4Vectors’ was built under R version 4.3.2 
Warning: replacing previous import ‘Biostrings::pattern’ by ‘grid::pattern’ when loading ‘genomation’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘ggseqlogo’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘GenomicPlot’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/GenomicPlot/old/GenomicPlot.Rcheck/GenomicPlot’


```
# HiLDA

<details>

* Version: 1.16.0
* GitHub: https://github.com/USCbiostats/HiLDA
* Source code: https://github.com/cran/HiLDA
* Date/Publication: 2023-10-24
* Number of recursive dependencies: 144

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
** using staged installation
** libs
using C++ compiler: ‘Apple clang version 15.0.0 (clang-1500.0.40.1)’
using SDK: ‘’
clang++ -arch arm64 -std=gnu++17 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I'/Users/clauswilke/github/cowplot/revdep/library.noindex/HiLDA/Rcpp/include' -I/opt/R/arm64/include    -fPIC  -falign-functions=64 -Wall -g -O2  -c EMalgorithm.cpp -o EMalgorithm.o
clang++ -arch arm64 -std=gnu++17 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I'/Users/clauswilke/github/cowplot/revdep/library.noindex/HiLDA/Rcpp/include' -I/opt/R/arm64/include    -fPIC  -falign-functions=64 -Wall -g -O2  -c RcppExports.cpp -o RcppExports.o
clang++ -arch arm64 -std=gnu++17 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I'/Users/clauswilke/github/cowplot/revdep/library.noindex/HiLDA/Rcpp/include' -I/opt/R/arm64/include    -fPIC  -falign-functions=64 -Wall -g -O2  -c checkBoundary.cpp -o checkBoundary.o
clang++ -arch arm64 -std=gnu++17 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I'/Users/clauswilke/github/cowplot/revdep/library.noindex/HiLDA/Rcpp/include' -I/opt/R/arm64/include    -fPIC  -falign-functions=64 -Wall -g -O2  -c convertFromToVector.cpp -o convertFromToVector.o
clang++ -arch arm64 -std=gnu++17 -dynamiclib -Wl,-headerpad_max_install_names -undefined dynamic_lookup -single_module -multiply_defined suppress -L/Library/Frameworks/R.framework/Resources/lib -L/opt/R/arm64/lib -o HiLDA.so EMalgorithm.o RcppExports.o checkBoundary.o convertFromToVector.o -F/Library/Frameworks/R.framework/.. -framework R -Wl,-framework -Wl,CoreFoundation
...
** byte-compile and prepare package for lazy loading
Error: .onLoad failed in loadNamespace() for 'rjags', details:
  call: dyn.load(file, DLLpath = DLLpath, ...)
  error: unable to load shared object '/Users/clauswilke/github/cowplot/revdep/library.noindex/HiLDA/rjags/libs/rjags.so':
  dlopen(/Users/clauswilke/github/cowplot/revdep/library.noindex/HiLDA/rjags/libs/rjags.so, 0x000A): Library not loaded: /usr/local/lib/libjags.4.dylib
  Referenced from: <621A7307-C96A-3A25-BE2B-B9C2339518AE> /Users/clauswilke/github/cowplot/revdep/library.noindex/HiLDA/rjags/libs/rjags.so
  Reason: tried: '/usr/local/lib/libjags.4.dylib' (no such file), '/System/Volumes/Preboot/Cryptexes/OS/usr/local/lib/libjags.4.dylib' (no such file), '/usr/local/lib/libjags.4.dylib' (no such file), '/Library/Frameworks/R.framework/Resources/lib/libjags.4.dylib' (no such file), '/Library/Java/JavaVirtualMachines/jdk-11.0.18+10/Contents/Home/lib/server/libjags.4.dylib' (no such file)
Execution halted
ERROR: lazy loading failed for package ‘HiLDA’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/HiLDA/new/HiLDA.Rcheck/HiLDA’


```
### CRAN

```
* installing *source* package ‘HiLDA’ ...
** using staged installation
** libs
using C++ compiler: ‘Apple clang version 15.0.0 (clang-1500.0.40.1)’
using SDK: ‘’
clang++ -arch arm64 -std=gnu++17 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I'/Users/clauswilke/github/cowplot/revdep/library.noindex/HiLDA/Rcpp/include' -I/opt/R/arm64/include    -fPIC  -falign-functions=64 -Wall -g -O2  -c EMalgorithm.cpp -o EMalgorithm.o
clang++ -arch arm64 -std=gnu++17 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I'/Users/clauswilke/github/cowplot/revdep/library.noindex/HiLDA/Rcpp/include' -I/opt/R/arm64/include    -fPIC  -falign-functions=64 -Wall -g -O2  -c RcppExports.cpp -o RcppExports.o
clang++ -arch arm64 -std=gnu++17 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I'/Users/clauswilke/github/cowplot/revdep/library.noindex/HiLDA/Rcpp/include' -I/opt/R/arm64/include    -fPIC  -falign-functions=64 -Wall -g -O2  -c checkBoundary.cpp -o checkBoundary.o
clang++ -arch arm64 -std=gnu++17 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I'/Users/clauswilke/github/cowplot/revdep/library.noindex/HiLDA/Rcpp/include' -I/opt/R/arm64/include    -fPIC  -falign-functions=64 -Wall -g -O2  -c convertFromToVector.cpp -o convertFromToVector.o
clang++ -arch arm64 -std=gnu++17 -dynamiclib -Wl,-headerpad_max_install_names -undefined dynamic_lookup -single_module -multiply_defined suppress -L/Library/Frameworks/R.framework/Resources/lib -L/opt/R/arm64/lib -o HiLDA.so EMalgorithm.o RcppExports.o checkBoundary.o convertFromToVector.o -F/Library/Frameworks/R.framework/.. -framework R -Wl,-framework -Wl,CoreFoundation
...
** byte-compile and prepare package for lazy loading
Error: .onLoad failed in loadNamespace() for 'rjags', details:
  call: dyn.load(file, DLLpath = DLLpath, ...)
  error: unable to load shared object '/Users/clauswilke/github/cowplot/revdep/library.noindex/HiLDA/rjags/libs/rjags.so':
  dlopen(/Users/clauswilke/github/cowplot/revdep/library.noindex/HiLDA/rjags/libs/rjags.so, 0x000A): Library not loaded: /usr/local/lib/libjags.4.dylib
  Referenced from: <621A7307-C96A-3A25-BE2B-B9C2339518AE> /Users/clauswilke/github/cowplot/revdep/library.noindex/HiLDA/rjags/libs/rjags.so
  Reason: tried: '/usr/local/lib/libjags.4.dylib' (no such file), '/System/Volumes/Preboot/Cryptexes/OS/usr/local/lib/libjags.4.dylib' (no such file), '/usr/local/lib/libjags.4.dylib' (no such file), '/Library/Frameworks/R.framework/Resources/lib/libjags.4.dylib' (no such file), '/Library/Java/JavaVirtualMachines/jdk-11.0.18+10/Contents/Home/lib/server/libjags.4.dylib' (no such file)
Execution halted
ERROR: lazy loading failed for package ‘HiLDA’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/HiLDA/old/HiLDA.Rcheck/HiLDA’


```
# mcmcabn

<details>

* Version: 0.6
* GitHub: NA
* Source code: https://github.com/cran/mcmcabn
* Date/Publication: 2023-09-28 12:20:02 UTC
* Number of recursive dependencies: 129

Run `revdepcheck::revdep_details(, "mcmcabn")` for more info

</details>

## In both

*   checking whether package ‘mcmcabn’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/mcmcabn/new/mcmcabn.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘mcmcabn’ ...
** package ‘mcmcabn’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error: .onLoad failed in loadNamespace() for 'rjags', details:
  call: dyn.load(file, DLLpath = DLLpath, ...)
  error: unable to load shared object '/Users/clauswilke/github/cowplot/revdep/library.noindex/mcmcabn/rjags/libs/rjags.so':
  dlopen(/Users/clauswilke/github/cowplot/revdep/library.noindex/mcmcabn/rjags/libs/rjags.so, 0x000A): Library not loaded: /usr/local/lib/libjags.4.dylib
  Referenced from: <621A7307-C96A-3A25-BE2B-B9C2339518AE> /Users/clauswilke/github/cowplot/revdep/library.noindex/mcmcabn/rjags/libs/rjags.so
  Reason: tried: '/usr/local/lib/libjags.4.dylib' (no such file), '/System/Volumes/Preboot/Cryptexes/OS/usr/local/lib/libjags.4.dylib' (no such file), '/usr/local/lib/libjags.4.dylib' (no such file), '/Library/Frameworks/R.framework/Resources/lib/libjags.4.dylib' (no such file), '/Library/Java/JavaVirtualMachines/jdk-11.0.18+10/Contents/Home/lib/server/libjags.4.dylib' (no such file)
Execution halted
ERROR: lazy loading failed for package ‘mcmcabn’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/mcmcabn/new/mcmcabn.Rcheck/mcmcabn’


```
### CRAN

```
* installing *source* package ‘mcmcabn’ ...
** package ‘mcmcabn’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error: .onLoad failed in loadNamespace() for 'rjags', details:
  call: dyn.load(file, DLLpath = DLLpath, ...)
  error: unable to load shared object '/Users/clauswilke/github/cowplot/revdep/library.noindex/mcmcabn/rjags/libs/rjags.so':
  dlopen(/Users/clauswilke/github/cowplot/revdep/library.noindex/mcmcabn/rjags/libs/rjags.so, 0x000A): Library not loaded: /usr/local/lib/libjags.4.dylib
  Referenced from: <621A7307-C96A-3A25-BE2B-B9C2339518AE> /Users/clauswilke/github/cowplot/revdep/library.noindex/mcmcabn/rjags/libs/rjags.so
  Reason: tried: '/usr/local/lib/libjags.4.dylib' (no such file), '/System/Volumes/Preboot/Cryptexes/OS/usr/local/lib/libjags.4.dylib' (no such file), '/usr/local/lib/libjags.4.dylib' (no such file), '/Library/Frameworks/R.framework/Resources/lib/libjags.4.dylib' (no such file), '/Library/Java/JavaVirtualMachines/jdk-11.0.18+10/Contents/Home/lib/server/libjags.4.dylib' (no such file)
Execution halted
ERROR: lazy loading failed for package ‘mcmcabn’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/mcmcabn/old/mcmcabn.Rcheck/mcmcabn’


```
# orthos

<details>

* Version: 1.0.1
* GitHub: NA
* Source code: https://github.com/cran/orthos
* Date/Publication: 2023-11-02
* Number of recursive dependencies: 180

Run `revdepcheck::revdep_details(, "orthos")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘orthos-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: loadContrastDatabase
    > ### Title: Load contrast database
    > ### Aliases: loadContrastDatabase
    > 
    > ### ** Examples
    > 
    > 
    ...
    demo_decomposed_contrasts_mouse_hdf5  already present in cache at: /Users/clauswilke/Library/Caches/org.R-project.R/R/ExperimentHub/mouse_v212_NDF_c100_DEMOassays.h5
    updating resource /Users/clauswilke/Library/Caches/org.R-project.R/R/ExperimentHub/mouse_v212_NDF_c100_DEMOassays.h5
    Error in stop_if_bad_dir(dir, prefix) : Directory
      "/Users/clauswilke/Library/Caches/org.R-project.R/R/ExperimentHub" does
      not seem to contain an HDF5-based SummarizedExperiment object
      previously saved with saveHDF5SummarizedExperiment(...,
      prefix="mouse_v212_NDF_c100_DEMO"). Make sure you're using the same
      'prefix' that was used when the object was saved.
    Calls: loadContrastDatabase -> <Anonymous> -> stop_if_bad_dir
    Execution halted
    ```

*   R CMD check timed out
    

*   checking whether package ‘orthos’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: package ‘SummarizedExperiment’ was built under R version 4.3.2
      Warning: package ‘S4Vectors’ was built under R version 4.3.2
    Found the following additional notes/warnings:
      Non-staged installation was used
    See ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/orthos/new/orthos.Rcheck/00install.out’ for details.
    ```

# pareg

<details>

* Version: 1.6.0
* GitHub: https://github.com/cbg-ethz/pareg
* Source code: https://github.com/cran/pareg
* Date/Publication: 2023-10-24
* Number of recursive dependencies: 320

Run `revdepcheck::revdep_details(, "pareg")` for more info

</details>

## In both

*   R CMD check timed out
    

*   checking for portable file names ... NOTE
    ```
    Found the following non-portable file paths:
      pareg/inst/scripts/synthetic_benchmark/resources/multi_config_workflow/config_ablation_study/config.yaml
      pareg/inst/scripts/synthetic_benchmark/resources/multi_config_workflow/config_ablation_study/params.csv
      pareg/inst/scripts/synthetic_benchmark/resources/multi_config_workflow/config_dispersion_fitting/config.yaml
      pareg/inst/scripts/synthetic_benchmark/resources/multi_config_workflow/config_dispersion_fitting/params.csv
      pareg/inst/scripts/synthetic_benchmark/resources/multi_config_workflow/config_real_datasets/config.yaml
      pareg/inst/scripts/synthetic_benchmark/resources/multi_config_workflow/config_real_datasets/params.csv
      pareg/inst/scripts/synthetic_benchmark/resources/multi_config_workflow/config_regularization_effect/config.yaml
      pareg/inst/scripts/synthetic_benchmark/resources/multi_config_workflow/config_regularization_effect/params.csv
      pareg/inst/scripts/synthetic_benchmark/resources/multi_config_workflow/config_regularization_parameter/config.yaml
    ...
      pareg/inst/scripts/synthetic_benchmark/resources/multi_config_workflow/config_response_distribution/params.csv
      pareg/inst/scripts/synthetic_benchmark/resources/multi_config_workflow/config_similarity_measures/config.yaml
      pareg/inst/scripts/synthetic_benchmark/resources/multi_config_workflow/config_similarity_measures/params.csv
      pareg/inst/scripts/synthetic_benchmark/resources/multi_config_workflow/workflow/scripts/compare_rocauc_vs_loss.R
      pareg/inst/scripts/synthetic_benchmark/resources/multi_config_workflow/config_regularization_parameter
    
    Tarballs are only required to store paths of up to 100 bytes and cannot
    store those of more than 256 bytes, with restrictions including to 100
    bytes for the final component.
    See section ‘Package structure’ in the ‘Writing R Extensions’ manual.
    ```

*   checking whether package ‘pareg’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/pareg/new/pareg.Rcheck/00install.out’ for details.
    ```

# phemd

<details>

* Version: 1.18.0
* GitHub: NA
* Source code: https://github.com/cran/phemd
* Date/Publication: 2023-10-24
* Number of recursive dependencies: 233

Run `revdepcheck::revdep_details(, "phemd")` for more info

</details>

## In both

*   checking whether package ‘phemd’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/phemd/new/phemd.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘phemd’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘monocle’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘qlcMatrix’
Execution halted
ERROR: lazy loading failed for package ‘phemd’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/phemd/new/phemd.Rcheck/phemd’


```
### CRAN

```
* installing *source* package ‘phemd’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error: package or namespace load failed for ‘monocle’ in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]):
 there is no package called ‘qlcMatrix’
Execution halted
ERROR: lazy loading failed for package ‘phemd’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/phemd/old/phemd.Rcheck/phemd’


```
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
# seqArchRplus

<details>

* Version: 1.2.0
* GitHub: https://github.com/snikumbh/seqArchRplus
* Source code: https://github.com/cran/seqArchRplus
* Date/Publication: 2023-10-24
* Number of recursive dependencies: 292

Run `revdepcheck::revdep_details(, "seqArchRplus")` for more info

</details>

## In both

*   checking whether package ‘seqArchRplus’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/seqArchRplus/new/seqArchRplus.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘seqArchRplus’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Warning message:
package ‘S4Vectors’ was built under R version 4.3.2 
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘ggseqlogo’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘seqArchRplus’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/seqArchRplus/new/seqArchRplus.Rcheck/seqArchRplus’


```
### CRAN

```
* installing *source* package ‘seqArchRplus’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Warning message:
package ‘S4Vectors’ was built under R version 4.3.2 
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘ggseqlogo’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘seqArchRplus’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/seqArchRplus/old/seqArchRplus.Rcheck/seqArchRplus’


```
# simplifyEnrichment

<details>

* Version: 
* GitHub: https://github.com/wilkelab/cowplot
* Source code: NA
* Number of recursive dependencies: 0

</details>

## Error before installation

### Devel

```



installing the source packages ‘DO.db’, ‘hu6800.db’, ‘reactome.db’



```
### CRAN

```



installing the source packages ‘DO.db’, ‘hu6800.db’, ‘reactome.db’



```
# SpatialOmicsOverlay

<details>

* Version: 1.2.1
* GitHub: NA
* Source code: https://github.com/cran/SpatialOmicsOverlay
* Date/Publication: 2023-10-26
* Number of recursive dependencies: 185

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
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
The operation couldn’t be completed. Unable to locate a Java Runtime.
Please visit http://www.java.com for information on installing Java.

Warning in system("/usr/libexec/java_home", intern = TRUE) :
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
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
The operation couldn’t be completed. Unable to locate a Java Runtime.
Please visit http://www.java.com for information on installing Java.

Warning in system("/usr/libexec/java_home", intern = TRUE) :
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
# stppSim

<details>

* Version: 1.3.2
* GitHub: https://github.com/Manalytics/stppSim
* Source code: https://github.com/cran/stppSim
* Date/Publication: 2023-10-29 21:20:02 UTC
* Number of recursive dependencies: 134

Run `revdepcheck::revdep_details(, "stppSim")` for more info

</details>

## In both

*   checking whether package ‘stppSim’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/stppSim/new/stppSim.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘stppSim’ ...
** package ‘stppSim’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
tcltk DLL is linked to '/opt/X11/lib/libX11.6.dylib'
Error: .onLoad failed in loadNamespace() for 'tcltk', details:
  call: fun(libname, pkgname)
  error: X11 library is missing: install XQuartz from www.xquartz.org
Execution halted
ERROR: lazy loading failed for package ‘stppSim’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/stppSim/new/stppSim.Rcheck/stppSim’


```
### CRAN

```
* installing *source* package ‘stppSim’ ...
** package ‘stppSim’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
tcltk DLL is linked to '/opt/X11/lib/libX11.6.dylib'
Error: .onLoad failed in loadNamespace() for 'tcltk', details:
  call: fun(libname, pkgname)
  error: X11 library is missing: install XQuartz from www.xquartz.org
Execution halted
ERROR: lazy loading failed for package ‘stppSim’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/stppSim/old/stppSim.Rcheck/stppSim’


```
# TOmicsVis

<details>

* Version: 2.0.0
* GitHub: https://github.com/benben-miao/TOmicsVis
* Source code: https://github.com/cran/TOmicsVis
* Date/Publication: 2023-08-28 18:30:02 UTC
* Number of recursive dependencies: 265

Run `revdepcheck::revdep_details(, "TOmicsVis")` for more info

</details>

## In both

*   checking whether package ‘TOmicsVis’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/TOmicsVis/new/TOmicsVis.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘TOmicsVis’ ...
** package ‘TOmicsVis’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
tcltk DLL is linked to '/opt/X11/lib/libX11.6.dylib'
Error: .onLoad failed in loadNamespace() for 'tcltk', details:
  call: fun(libname, pkgname)
  error: X11 library is missing: install XQuartz from www.xquartz.org
Execution halted
ERROR: lazy loading failed for package ‘TOmicsVis’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/TOmicsVis/new/TOmicsVis.Rcheck/TOmicsVis’


```
### CRAN

```
* installing *source* package ‘TOmicsVis’ ...
** package ‘TOmicsVis’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
tcltk DLL is linked to '/opt/X11/lib/libX11.6.dylib'
Error: .onLoad failed in loadNamespace() for 'tcltk', details:
  call: fun(libname, pkgname)
  error: X11 library is missing: install XQuartz from www.xquartz.org
Execution halted
ERROR: lazy loading failed for package ‘TOmicsVis’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/TOmicsVis/old/TOmicsVis.Rcheck/TOmicsVis’


```
# valse

<details>

* Version: 0.1-0
* GitHub: NA
* Source code: https://github.com/cran/valse
* Date/Publication: 2021-05-31 08:00:02 UTC
* Number of recursive dependencies: 55

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
using SDK: ‘’
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
using SDK: ‘’
clang -arch arm64 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG   -I/opt/R/arm64/include    -fPIC  -falign-functions=64 -Wall -g -O2  -c EMGLLF.c -o EMGLLF.o
EMGLLF.c:4:10: fatal error: 'gsl/gsl_linalg.h' file not found
#include <gsl/gsl_linalg.h>
         ^~~~~~~~~~~~~~~~~~
1 error generated.
make: *** [EMGLLF.o] Error 1
ERROR: compilation failed for package ‘valse’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/valse/old/valse.Rcheck/valse’


```
