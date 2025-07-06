# BeeBDC

<details>

* Version: 1.2.1
* GitHub: https://github.com/jbdorey/BeeBDC
* Source code: https://github.com/cran/BeeBDC
* Date/Publication: 2024-11-04 04:10:02 UTC
* Number of recursive dependencies: 217

Run `revdepcheck::revdep_details(, "BeeBDC")` for more info

</details>

## Newly broken

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Backtrace:
          ▆
       1. └─BeeBDC::taxadbToBeeBDC(...) at test-taxadbToBeeBDC.R:10:2
       2.   └─taxadb::td_create(...)
       3.     └─taxadb:::cache_urls(meta$url, meta$id)
       4.       └─base::vapply(...)
       5.         └─contentid (local) FUN(X[[i]], ...)
       6.           └─contentid::store(path, dir = dir, algos = algo)
       7.             └─base::vapply(...)
       8.               └─contentid (local) FUN(X[[i]], ...)
       9.                 └─fs::file_copy(filepath, dest)
      
      [ FAIL 1 | WARN 4 | SKIP 0 | PASS 246 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking running R code from vignettes ...
    ```
      ‘BeeBDC_main.Rmd’ using ‘UTF-8’... failed
      ‘basic_workflow.Rmd’ using ‘UTF-8’... OK
     ERROR
    Errors in running code in vignettes:
    when running code in ‘BeeBDC_main.Rmd’
      ...
    
    > rm(testChecklist)
    
    > check_space <- BeeBDC::countryOutlieRs(checklist = checklistFile, 
    +     data = check_space, keepAdjacentCountry = TRUE, pointBuffer = 0.05, 
    +      .... [TRUNCATED] 
    
      When sourcing ‘BeeBDC_main.R’:
    Error: object 'checklistFile' not found
    Execution halted
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 219 marked UTF-8 strings
    ```

# IntOMICS

<details>

* Version: 1.2.0
* GitHub: https://github.com/anna-pacinkova/IntOMICS
* Source code: https://github.com/cran/IntOMICS
* Date/Publication: 2023-10-24
* Number of recursive dependencies: 209

Run `revdepcheck::revdep_details(, "IntOMICS")` for more info

</details>

## Newly broken

*   checking running R code from vignettes ...
    ```
      ‘IntOMICS_vignette.Rmd’ using ‘UTF-8’... failed
     ERROR
    Errors in running code in vignettes:
    when running code in ‘IntOMICS_vignette.Rmd’
      ...
    Attaching package: ‘HDF5Array’
    
    The following object is masked from ‘package:rhdf5’:
    
        h5ls
    
    
      When sourcing ‘IntOMICS_vignette.R’:
    Error: HDF5. File accessibility. Unable to open file.
    Execution halted
    ```

## In both

*   checking data for ASCII and uncompressed saves ... WARNING
    ```
      Warning: package needs dependence on R (>= 2.10)
    ```

# orthos

<details>

* Version: 1.4.1
* GitHub: NA
* Source code: https://github.com/cran/orthos
* Date/Publication: 2025-03-20
* Number of recursive dependencies: 171

Run `revdepcheck::revdep_details(, "orthos")` for more info

</details>

## Newly broken

*   checking examples ...sh: line 1: 62014 Abort trap: 6           LANGUAGE=en _R_CHECK_INTERNALS2_=1 '/Library/Frameworks/R.framework/Resources/bin/R' --vanilla > 'orthos-Ex.Rout' 2>&1 < 'orthos-Ex.R'
    ```
     ERROR
    Running examples in ‘orthos-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: decomposeVar
    > ### Title: Decompose input contrasts to decoded and residual fractions
    > ### Aliases: decomposeVar
    > 
    > ### ** Examples
    > 
    ...
      More than one entry in cache for: EH7869 : 7919
      See AnnotationHub's TroubleshootingTheHubs vignette section on corrupt cache
    Error: failed to load resource
      name: EH7869
      title: ContextEncoder_Human
      reason: 1 resources failed to download
    Execution halted
    pybind11::handle::dec_ref() is being called while the GIL is either not held or invalid. Please see https://pybind11.readthedocs.io/en/stable/advanced/misc.html#common-sources-of-global-interpreter-lock-errors for debugging advice.
    If you are convinced there is no bug in your code, you can #define PYBIND11_NO_ASSERT_GIL_HELD_INCREF_DECREFto disable this check. In that case you have to ensure this #define is consistently used for all translation units linked into a given pybind11 extension, otherwise there will be ODR violations.The failing pybind11::handle::dec_ref() call was triggered on a type object.
    libc++abi: terminating due to uncaught exception of type std::runtime_error: pybind11::handle::dec_ref() PyGILState_Check() failure.
    ```

## Newly fixed

*   checking examples ...sh: line 1: 61929 Abort trap: 6           LANGUAGE=en _R_CHECK_INTERNALS2_=1 '/Library/Frameworks/R.framework/Resources/bin/R' --vanilla > 'orthos-Ex.Rout' 2>&1 < 'orthos-Ex.R'
    ```
     ERROR
    Running examples in ‘orthos-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: decomposeVar
    > ### Title: Decompose input contrasts to decoded and residual fractions
    > ### Aliases: decomposeVar
    > 
    > ### ** Examples
    > 
    ...
      More than one entry in cache for: EH7869 : 7919
      See AnnotationHub's TroubleshootingTheHubs vignette section on corrupt cache
    Error: failed to load resource
      name: EH7869
      title: ContextEncoder_Human
      reason: 1 resources failed to download
    Execution halted
    pybind11::handle::dec_ref() is being called while the GIL is either not held or invalid. Please see https://pybind11.readthedocs.io/en/stable/advanced/misc.html#common-sources-of-global-interpreter-lock-errors for debugging advice.
    If you are convinced there is no bug in your code, you can #define PYBIND11_NO_ASSERT_GIL_HELD_INCREF_DECREFto disable this check. In that case you have to ensure this #define is consistently used for all translation units linked into a given pybind11 extension, otherwise there will be ODR violations.The failing pybind11::handle::dec_ref() call was triggered on a type object.
    libc++abi: terminating due to uncaught exception of type std::runtime_error: pybind11::handle::dec_ref() PyGILState_Check() failure.
    ```

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’/Library/Frameworks/R.framework/Resources/bin/BATCH: line 60: 62909 Abort trap: 6           ${R_HOME}/bin/R -f ${in} ${opts} ${R_BATCH_OPTIONS} > ${out} 2>&1
    
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
       13.                 └─base::tryCatch(...)
       14.                   └─base (local) tryCatchList(expr, classes, parentenv, handlers)
       15.                     └─base (local) tryCatchOne(expr, names, parentenv, handlers[[1L]])
       16.                       └─value[[3L]](cond)
       17.                         └─base::tryCatch(...)
    ...
       18.                           └─base (local) tryCatchList(expr, classes, parentenv, handlers)
       19.                             └─base (local) tryCatchOne(expr, names, parentenv, handlers[[1L]])
       20.                               └─value[[3L]](cond)
      
      [ FAIL 2 | WARN 8 | SKIP 1 | PASS 178 ]
      Error: Test failures
      Execution halted
      pybind11::handle::dec_ref() is being called while the GIL is either not held or invalid. Please see https://pybind11.readthedocs.io/en/stable/advanced/misc.html#common-sources-of-global-interpreter-lock-errors for debugging advice.
      If you are convinced there is no bug in your code, you can #define PYBIND11_NO_ASSERT_GIL_HELD_INCREF_DECREFto disable this check. In that case you have to ensure this #define is consistently used for all translation units linked into a given pybind11 extension, otherwise there will be ODR violations.The failing pybind11::handle::dec_ref() call was triggered on a type object.
      libc++abi: terminating due to uncaught exception of type std::runtime_error: pybind11::handle::dec_ref() PyGILState_Check() failure.
    ```

*   checking running R code from vignettes ...
    ```
    sh: line 1: 63236 Abort trap: 6           R_BATCH=1234 _R_CHECK_INTERNALS2_=1 '/Library/Frameworks/R.framework/Resources/bin/R' --vanilla --no-echo > 'orthosIntro.Rmd.log' 2>&1 < '/var/folders/l4/yqkcxkkj07jccl06ptwvsnfh0000gn/T//RtmpI44FLx/fileecde45ba4732'
      ‘orthosIntro.Rmd’ using ‘UTF-8’... failed
     ERROR
    Errors in running code in vignettes:
    when running code in ‘orthosIntro.Rmd’
      ...
    
      When sourcing ‘orthosIntro.R’:
    Error: failed to load resource
      name: EH7869
      title: ContextEncoder_Human
      reason: 1 resources failed to download
    Execution halted
    pybind11::handle::dec_ref() is being called while the GIL is either not held or invalid. Please see https://pybind11.readthedocs.io/en/stable/advanced/misc.html#common-sources-of-global-interpreter-lock-errors for debugging advice.
    If you are convinced there is no bug in your code, you can #define PYBIND11_NO_ASSERT_GIL_HELD_INCREF_DECREFto disable this check. In that case you have to ensure this #define is consistently used for all translation units linked into a given pybind11 extension, otherwise there will be ODR violations.The failing pybind11::handle::dec_ref() call was triggered on a type object.
    libc++abi: terminating due to uncaught exception of type std::runtime_error: pybind11::handle::dec_ref() PyGILState_Check() failure.
    ```

*   checking whether package ‘orthos’ can be installed ... NOTE
    ```
    Found the following notes/warnings:
      Non-staged installation was used
    See ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/orthos/new/orthos.Rcheck/00install.out’ for details.
    ```

# SCIntRuler

<details>

* Version: 0.99.6
* GitHub: https://github.com/yuelyu21/SCIntRuler
* Source code: https://github.com/cran/SCIntRuler
* Date/Publication: 2024-07-12 15:20:08 UTC
* Number of recursive dependencies: 199

Run `revdepcheck::revdep_details(, "SCIntRuler")` for more info

</details>

## Newly broken

*   checking running R code from vignettes ...
    ```
      ‘SCIntRuler.Rmd’ using ‘UTF-8’... failed
     ERROR
    Errors in running code in vignettes:
    when running code in ‘SCIntRuler.Rmd’
      ...
    
    > leg <- cowplot::get_legend(p5)
    
    > gridExtra::grid.arrange(gridExtra::arrangeGrob(p5 + 
    +     NoLegend() + ggtitle("Unintegrated"), p6 + NoLegend() + ggtitle("Seurat CCA"), 
    +     p7  .... [TRUNCATED] 
    
      When sourcing ‘SCIntRuler.R’:
    Error: `grobs` must be a single grob or a list of grobs, not a list.
    Execution halted
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

