# bigstatsr

<details>

* Version: 0.9.1
* Source code: https://github.com/cran/bigstatsr
* URL: https://privefl.github.io/bigstatsr
* BugReports: https://github.com/privefl/bigstatsr/issues
* Date/Publication: 2019-03-03 17:30:13 UTC
* Number of recursive dependencies: 80

Run `revdep_details(,"bigstatsr")` for more info

</details>

## In both

*   checking whether package ‘bigstatsr’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/wilke/github/cowplot/revdep/checks.noindex/bigstatsr/new/bigstatsr.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘bigstatsr’ ...
** package ‘bigstatsr’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c AUC.cpp -o AUC.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c FBM-extract.cpp -o FBM-extract.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c FBM-file.cpp -o FBM-file.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c FBM-replace.cpp -o FBM-replace.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c FBM-xptr.cpp -o FBM-xptr.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c RcppExports.cpp -o RcppExports.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c arma-prod.cpp -o arma-prod.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c biglassoLin.cpp -o biglassoLin.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c biglassoLog.cpp -o biglassoLog.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c biglassoUtils.cpp -o biglassoUtils.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c colstats.cpp -o colstats.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c counts.cpp -o counts.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c decode.cpp -o decode.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c errorMsgs.cpp -o errorMsgs.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c prodMatVec.cpp -o prodMatVec.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c transpose.cpp -o transpose.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c univRegLin5.cpp -o univRegLin5.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c univRegLog.cpp -o univRegLog.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c utils-mat.cpp -o utils-mat.o
clang++ -std=gnu++11 -dynamiclib -Wl,-headerpad_max_install_names -undefined dynamic_lookup -single_module -multiply_defined suppress -L/Library/Frameworks/R.framework/Resources/lib -L/usr/local/lib -o bigstatsr.so AUC.o FBM-extract.o FBM-file.o FBM-replace.o FBM-xptr.o RcppExports.o arma-prod.o biglassoLin.o biglassoLog.o biglassoUtils.o colstats.o counts.o decode.o errorMsgs.o prodMatVec.o transpose.o univRegLin5.o univRegLog.o utils-mat.o -L/Library/Frameworks/R.framework/Resources/lib -lRlapack -L/Library/Frameworks/R.framework/Resources/lib -lRblas -L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0 -L/usr/local/gfortran/lib -lgfortran -lquadmath -lm -F/Library/Frameworks/R.framework/.. -framework R -Wl,-framework -Wl,CoreFoundation
ld: warning: directory not found for option '-L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0'
ld: warning: directory not found for option '-L/usr/local/gfortran/lib'
ld: library not found for -lgfortran
clang: error: linker command failed with exit code 1 (use -v to see invocation)
make: *** [bigstatsr.so] Error 1
ERROR: compilation failed for package ‘bigstatsr’
* removing ‘/Users/wilke/github/cowplot/revdep/checks.noindex/bigstatsr/new/bigstatsr.Rcheck/bigstatsr’

```
### CRAN

```
* installing *source* package ‘bigstatsr’ ...
** package ‘bigstatsr’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c AUC.cpp -o AUC.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c FBM-extract.cpp -o FBM-extract.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c FBM-file.cpp -o FBM-file.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c FBM-replace.cpp -o FBM-replace.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c FBM-xptr.cpp -o FBM-xptr.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c RcppExports.cpp -o RcppExports.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c arma-prod.cpp -o arma-prod.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c biglassoLin.cpp -o biglassoLin.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c biglassoLog.cpp -o biglassoLog.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c biglassoUtils.cpp -o biglassoUtils.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c colstats.cpp -o colstats.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c counts.cpp -o counts.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c decode.cpp -o decode.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c errorMsgs.cpp -o errorMsgs.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c prodMatVec.cpp -o prodMatVec.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c transpose.cpp -o transpose.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c univRegLin5.cpp -o univRegLin5.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c univRegLog.cpp -o univRegLog.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c utils-mat.cpp -o utils-mat.o
clang++ -std=gnu++11 -dynamiclib -Wl,-headerpad_max_install_names -undefined dynamic_lookup -single_module -multiply_defined suppress -L/Library/Frameworks/R.framework/Resources/lib -L/usr/local/lib -o bigstatsr.so AUC.o FBM-extract.o FBM-file.o FBM-replace.o FBM-xptr.o RcppExports.o arma-prod.o biglassoLin.o biglassoLog.o biglassoUtils.o colstats.o counts.o decode.o errorMsgs.o prodMatVec.o transpose.o univRegLin5.o univRegLog.o utils-mat.o -L/Library/Frameworks/R.framework/Resources/lib -lRlapack -L/Library/Frameworks/R.framework/Resources/lib -lRblas -L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0 -L/usr/local/gfortran/lib -lgfortran -lquadmath -lm -F/Library/Frameworks/R.framework/.. -framework R -Wl,-framework -Wl,CoreFoundation
ld: warning: directory not found for option '-L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0'
ld: warning: directory not found for option '-L/usr/local/gfortran/lib'
ld: library not found for -lgfortran
clang: error: linker command failed with exit code 1 (use -v to see invocation)
make: *** [bigstatsr.so] Error 1
ERROR: compilation failed for package ‘bigstatsr’
* removing ‘/Users/wilke/github/cowplot/revdep/checks.noindex/bigstatsr/old/bigstatsr.Rcheck/bigstatsr’

```
# BPRMeth

<details>

* Version: 1.8.1
* Source code: https://github.com/cran/BPRMeth
* Date/Publication: 2019-01-04
* Number of recursive dependencies: 82

Run `revdep_details(,"BPRMeth")` for more info

</details>

## In both

*   checking whether package ‘BPRMeth’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/wilke/github/cowplot/revdep/checks.noindex/BPRMeth/new/BPRMeth.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘BPRMeth’ ...
** using staged installation
** libs
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/wilke/github/cowplot/revdep/library.noindex/BPRMeth/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/BPRMeth/RcppArmadillo/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include -fopenmp  -fPIC  -Wall -g -O2  -c RcppExports.cpp -o RcppExports.o
clang: error: unsupported option '-fopenmp'
make: *** [RcppExports.o] Error 1
ERROR: compilation failed for package ‘BPRMeth’
* removing ‘/Users/wilke/github/cowplot/revdep/checks.noindex/BPRMeth/new/BPRMeth.Rcheck/BPRMeth’

```
### CRAN

```
* installing *source* package ‘BPRMeth’ ...
** using staged installation
** libs
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/wilke/github/cowplot/revdep/library.noindex/BPRMeth/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/BPRMeth/RcppArmadillo/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include -fopenmp  -fPIC  -Wall -g -O2  -c RcppExports.cpp -o RcppExports.o
clang: error: unsupported option '-fopenmp'
make: *** [RcppExports.o] Error 1
ERROR: compilation failed for package ‘BPRMeth’
* removing ‘/Users/wilke/github/cowplot/revdep/checks.noindex/BPRMeth/old/BPRMeth.Rcheck/BPRMeth’

```
# CaseBasedReasoning

<details>

* Version: 0.1
* Source code: https://github.com/cran/CaseBasedReasoning
* BugReports: https://github.com/sipemu/case-based-reasoning/issues
* Date/Publication: 2018-06-12 10:34:11 UTC
* Number of recursive dependencies: 120

Run `revdep_details(,"CaseBasedReasoning")` for more info

</details>

## In both

*   checking whether package ‘CaseBasedReasoning’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/wilke/github/cowplot/revdep/checks.noindex/CaseBasedReasoning/new/CaseBasedReasoning.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘CaseBasedReasoning’ ...
** package ‘CaseBasedReasoning’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppParallel/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c RcppExports.cpp -o RcppExports.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppParallel/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c distanceAPI.cpp -o distanceAPI.o
In file included from distanceAPI.cpp:1:
./distanceAPI.h:134:16: warning: 'rfDepthXYDistanceAPI::calc' hides overloaded virtual function [-Woverloaded-virtual]
  virtual void calc(arma::mat& xNodeIDs, arma::mat& yNodeIDs);
               ^
./distanceAPI.h:121:16: note: hidden overloaded virtual function 'rfDepthDistanceAPI::calc' declared here: different number of parameters (1 vs 2)
  virtual void calc(arma::mat& xNodeIDs);
               ^
1 warning generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppParallel/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c distances.cpp -o distances.o
In file included from distances.cpp:4:
./distanceAPI.h:134:16: warning: 'rfDepthXYDistanceAPI::calc' hides overloaded virtual function [-Woverloaded-virtual]
  virtual void calc(arma::mat& xNodeIDs, arma::mat& yNodeIDs);
               ^
./distanceAPI.h:121:16: note: hidden overloaded virtual function 'rfDepthDistanceAPI::calc' declared here: different number of parameters (1 vs 2)
  virtual void calc(arma::mat& xNodeIDs);
               ^
1 warning generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppParallel/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c kNN.cpp -o kNN.o
kNN.cpp:25:19: warning: 'sort_index<arma::Mat<double> >' is deprecated [-Wdeprecated-declarations]
    order = arma::sort_index(tmpDist, sortDirection);
                  ^
/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include/armadillo_bits/fn_sort_index.hpp:40:1: note: 'sort_index<arma::Mat<double> >' has been explicitly marked deprecated here
arma_deprecated
^
/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include/armadillo_bits/compiler_setup.hpp:291:44: note: expanded from macro 'arma_deprecated'
    #define arma_deprecated __attribute__((__deprecated__))
                                           ^
1 warning generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppParallel/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c order.cpp -o order.o
order.cpp:26:21: warning: 'sort_index<arma::subview<double> >' is deprecated [-Wdeprecated-declarations]
      order = arma::sort_index(x_.col(i), sortDirection_);
                    ^
/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include/armadillo_bits/fn_sort_index.hpp:40:1: note: 'sort_index<arma::subview<double> >' has been explicitly marked deprecated here
arma_deprecated
^
/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include/armadillo_bits/compiler_setup.hpp:291:44: note: expanded from macro 'arma_deprecated'
    #define arma_deprecated __attribute__((__deprecated__))
                                           ^
order.cpp:75:28: warning: 'sort_index<arma::Mat<double> >' is deprecated [-Wdeprecated-declarations]
  arma::uvec order = arma::sort_index(x, sortDirection) + 1;
                           ^
/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include/armadillo_bits/fn_sort_index.hpp:40:1: note: 'sort_index<arma::Mat<double> >' has been explicitly marked deprecated here
arma_deprecated
^
/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include/armadillo_bits/compiler_setup.hpp:291:44: note: expanded from macro 'arma_deprecated'
    #define arma_deprecated __attribute__((__deprecated__))
                                           ^
2 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppParallel/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c parallelTerminalNodeID.cpp -o parallelTerminalNodeID.o
clang++ -std=gnu++11 -dynamiclib -Wl,-headerpad_max_install_names -undefined dynamic_lookup -single_module -multiply_defined suppress -L/Library/Frameworks/R.framework/Resources/lib -L/usr/local/lib -o CaseBasedReasoning.so RcppExports.o distanceAPI.o distances.o kNN.o order.o parallelTerminalNodeID.o -L/Library/Frameworks/R.framework/Resources/lib -lRlapack -L/Library/Frameworks/R.framework/Resources/lib -lRblas -L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0 -L/usr/local/gfortran/lib -lgfortran -lquadmath -lm -F/Library/Frameworks/R.framework/.. -framework R -Wl,-framework -Wl,CoreFoundation
ld: warning: directory not found for option '-L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0'
ld: warning: directory not found for option '-L/usr/local/gfortran/lib'
ld: library not found for -lgfortran
clang: error: linker command failed with exit code 1 (use -v to see invocation)
make: *** [CaseBasedReasoning.so] Error 1
ERROR: compilation failed for package ‘CaseBasedReasoning’
* removing ‘/Users/wilke/github/cowplot/revdep/checks.noindex/CaseBasedReasoning/new/CaseBasedReasoning.Rcheck/CaseBasedReasoning’

```
### CRAN

```
* installing *source* package ‘CaseBasedReasoning’ ...
** package ‘CaseBasedReasoning’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppParallel/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c RcppExports.cpp -o RcppExports.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppParallel/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c distanceAPI.cpp -o distanceAPI.o
In file included from distanceAPI.cpp:1:
./distanceAPI.h:134:16: warning: 'rfDepthXYDistanceAPI::calc' hides overloaded virtual function [-Woverloaded-virtual]
  virtual void calc(arma::mat& xNodeIDs, arma::mat& yNodeIDs);
               ^
./distanceAPI.h:121:16: note: hidden overloaded virtual function 'rfDepthDistanceAPI::calc' declared here: different number of parameters (1 vs 2)
  virtual void calc(arma::mat& xNodeIDs);
               ^
1 warning generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppParallel/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c distances.cpp -o distances.o
In file included from distances.cpp:4:
./distanceAPI.h:134:16: warning: 'rfDepthXYDistanceAPI::calc' hides overloaded virtual function [-Woverloaded-virtual]
  virtual void calc(arma::mat& xNodeIDs, arma::mat& yNodeIDs);
               ^
./distanceAPI.h:121:16: note: hidden overloaded virtual function 'rfDepthDistanceAPI::calc' declared here: different number of parameters (1 vs 2)
  virtual void calc(arma::mat& xNodeIDs);
               ^
1 warning generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppParallel/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c kNN.cpp -o kNN.o
kNN.cpp:25:19: warning: 'sort_index<arma::Mat<double> >' is deprecated [-Wdeprecated-declarations]
    order = arma::sort_index(tmpDist, sortDirection);
                  ^
/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include/armadillo_bits/fn_sort_index.hpp:40:1: note: 'sort_index<arma::Mat<double> >' has been explicitly marked deprecated here
arma_deprecated
^
/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include/armadillo_bits/compiler_setup.hpp:291:44: note: expanded from macro 'arma_deprecated'
    #define arma_deprecated __attribute__((__deprecated__))
                                           ^
1 warning generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppParallel/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c order.cpp -o order.o
order.cpp:26:21: warning: 'sort_index<arma::subview<double> >' is deprecated [-Wdeprecated-declarations]
      order = arma::sort_index(x_.col(i), sortDirection_);
                    ^
/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include/armadillo_bits/fn_sort_index.hpp:40:1: note: 'sort_index<arma::subview<double> >' has been explicitly marked deprecated here
arma_deprecated
^
/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include/armadillo_bits/compiler_setup.hpp:291:44: note: expanded from macro 'arma_deprecated'
    #define arma_deprecated __attribute__((__deprecated__))
                                           ^
order.cpp:75:28: warning: 'sort_index<arma::Mat<double> >' is deprecated [-Wdeprecated-declarations]
  arma::uvec order = arma::sort_index(x, sortDirection) + 1;
                           ^
/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include/armadillo_bits/fn_sort_index.hpp:40:1: note: 'sort_index<arma::Mat<double> >' has been explicitly marked deprecated here
arma_deprecated
^
/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include/armadillo_bits/compiler_setup.hpp:291:44: note: expanded from macro 'arma_deprecated'
    #define arma_deprecated __attribute__((__deprecated__))
                                           ^
2 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppParallel/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c parallelTerminalNodeID.cpp -o parallelTerminalNodeID.o
clang++ -std=gnu++11 -dynamiclib -Wl,-headerpad_max_install_names -undefined dynamic_lookup -single_module -multiply_defined suppress -L/Library/Frameworks/R.framework/Resources/lib -L/usr/local/lib -o CaseBasedReasoning.so RcppExports.o distanceAPI.o distances.o kNN.o order.o parallelTerminalNodeID.o -L/Library/Frameworks/R.framework/Resources/lib -lRlapack -L/Library/Frameworks/R.framework/Resources/lib -lRblas -L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0 -L/usr/local/gfortran/lib -lgfortran -lquadmath -lm -F/Library/Frameworks/R.framework/.. -framework R -Wl,-framework -Wl,CoreFoundation
ld: warning: directory not found for option '-L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0'
ld: warning: directory not found for option '-L/usr/local/gfortran/lib'
ld: library not found for -lgfortran
clang: error: linker command failed with exit code 1 (use -v to see invocation)
make: *** [CaseBasedReasoning.so] Error 1
ERROR: compilation failed for package ‘CaseBasedReasoning’
* removing ‘/Users/wilke/github/cowplot/revdep/checks.noindex/CaseBasedReasoning/old/CaseBasedReasoning.Rcheck/CaseBasedReasoning’

```
# cytometree

<details>

* Version: 1.3.0
* Source code: https://github.com/cran/cytometree
* BugReports: https://github.com/sistm/Cytometree/issues
* Date/Publication: 2019-01-12 13:10:03 UTC
* Number of recursive dependencies: 56

Run `revdep_details(,"cytometree")` for more info

</details>

## In both

*   checking whether package ‘cytometree’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/wilke/github/cowplot/revdep/checks.noindex/cytometree/new/cytometree.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘cytometree’ ...
** package ‘cytometree’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/wilke/github/cowplot/revdep/library.noindex/cytometree/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/cytometree/RcppArmadillo/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c FmeasureC.cpp -o FmeasureC.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/wilke/github/cowplot/revdep/library.noindex/cytometree/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/cytometree/RcppArmadillo/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c RcppExports.cpp -o RcppExports.o
clang++ -std=gnu++11 -dynamiclib -Wl,-headerpad_max_install_names -undefined dynamic_lookup -single_module -multiply_defined suppress -L/Library/Frameworks/R.framework/Resources/lib -L/usr/local/lib -o cytometree.so FmeasureC.o RcppExports.o -L/Library/Frameworks/R.framework/Resources/lib -lRlapack -L/Library/Frameworks/R.framework/Resources/lib -lRblas -L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0 -L/usr/local/gfortran/lib -lgfortran -lquadmath -lm -F/Library/Frameworks/R.framework/.. -framework R -Wl,-framework -Wl,CoreFoundation
ld: warning: directory not found for option '-L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0'
ld: warning: directory not found for option '-L/usr/local/gfortran/lib'
ld: library not found for -lgfortran
clang: error: linker command failed with exit code 1 (use -v to see invocation)
make: *** [cytometree.so] Error 1
ERROR: compilation failed for package ‘cytometree’
* removing ‘/Users/wilke/github/cowplot/revdep/checks.noindex/cytometree/new/cytometree.Rcheck/cytometree’

```
### CRAN

```
* installing *source* package ‘cytometree’ ...
** package ‘cytometree’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/wilke/github/cowplot/revdep/library.noindex/cytometree/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/cytometree/RcppArmadillo/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c FmeasureC.cpp -o FmeasureC.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/wilke/github/cowplot/revdep/library.noindex/cytometree/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/cytometree/RcppArmadillo/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c RcppExports.cpp -o RcppExports.o
clang++ -std=gnu++11 -dynamiclib -Wl,-headerpad_max_install_names -undefined dynamic_lookup -single_module -multiply_defined suppress -L/Library/Frameworks/R.framework/Resources/lib -L/usr/local/lib -o cytometree.so FmeasureC.o RcppExports.o -L/Library/Frameworks/R.framework/Resources/lib -lRlapack -L/Library/Frameworks/R.framework/Resources/lib -lRblas -L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0 -L/usr/local/gfortran/lib -lgfortran -lquadmath -lm -F/Library/Frameworks/R.framework/.. -framework R -Wl,-framework -Wl,CoreFoundation
ld: warning: directory not found for option '-L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0'
ld: warning: directory not found for option '-L/usr/local/gfortran/lib'
ld: library not found for -lgfortran
clang: error: linker command failed with exit code 1 (use -v to see invocation)
make: *** [cytometree.so] Error 1
ERROR: compilation failed for package ‘cytometree’
* removing ‘/Users/wilke/github/cowplot/revdep/checks.noindex/cytometree/old/cytometree.Rcheck/cytometree’

```
# enrichplot

<details>

* Version: 1.2.0
* Source code: https://github.com/cran/enrichplot
* URL: https://github.com/GuangchuangYu/enrichplot
* BugReports: https://github.com/GuangchuangYu/enrichplot/issues
* Date/Publication: 2018-10-30
* Number of recursive dependencies: 110

Run `revdep_details(,"enrichplot")` for more info

</details>

## In both

*   checking whether package ‘enrichplot’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/wilke/github/cowplot/revdep/checks.noindex/enrichplot/new/enrichplot.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘org.Hs.eg.db’
    ```

## Installation

### Devel

```
* installing *source* package ‘enrichplot’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘GO.db’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘enrichplot’
* removing ‘/Users/wilke/github/cowplot/revdep/checks.noindex/enrichplot/new/enrichplot.Rcheck/enrichplot’

```
### CRAN

```
* installing *source* package ‘enrichplot’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘GO.db’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘enrichplot’
* removing ‘/Users/wilke/github/cowplot/revdep/checks.noindex/enrichplot/old/enrichplot.Rcheck/enrichplot’

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
# HPAanalyze

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/HPAanalyze
* Date/Publication: 2018-10-30
* Number of recursive dependencies: 93

Run `revdep_details(,"HPAanalyze")` for more info

</details>

## In both

*   checking whether package ‘HPAanalyze’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/wilke/github/cowplot/revdep/checks.noindex/HPAanalyze/new/HPAanalyze.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘HPAanalyze’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error: .onLoad failed in loadNamespace() for 'rJava', details:
  call: dyn.load(file, DLLpath = DLLpath, ...)
  error: unable to load shared object '/Users/wilke/github/cowplot/revdep/library.noindex/HPAanalyze/rJava/libs/rJava.so':
  dlopen(/Users/wilke/github/cowplot/revdep/library.noindex/HPAanalyze/rJava/libs/rJava.so, 6): Library not loaded: /Library/Java/JavaVirtualMachines/jdk-11.0.1.jdk/Contents/Home/lib/server/libjvm.dylib
  Referenced from: /Users/wilke/github/cowplot/revdep/library.noindex/HPAanalyze/rJava/libs/rJava.so
  Reason: image not found
Execution halted
ERROR: lazy loading failed for package ‘HPAanalyze’
* removing ‘/Users/wilke/github/cowplot/revdep/checks.noindex/HPAanalyze/new/HPAanalyze.Rcheck/HPAanalyze’

```
### CRAN

```
* installing *source* package ‘HPAanalyze’ ...
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error: .onLoad failed in loadNamespace() for 'rJava', details:
  call: dyn.load(file, DLLpath = DLLpath, ...)
  error: unable to load shared object '/Users/wilke/github/cowplot/revdep/library.noindex/HPAanalyze/rJava/libs/rJava.so':
  dlopen(/Users/wilke/github/cowplot/revdep/library.noindex/HPAanalyze/rJava/libs/rJava.so, 6): Library not loaded: /Library/Java/JavaVirtualMachines/jdk-11.0.1.jdk/Contents/Home/lib/server/libjvm.dylib
  Referenced from: /Users/wilke/github/cowplot/revdep/library.noindex/HPAanalyze/rJava/libs/rJava.so
  Reason: image not found
Execution halted
ERROR: lazy loading failed for package ‘HPAanalyze’
* removing ‘/Users/wilke/github/cowplot/revdep/checks.noindex/HPAanalyze/old/HPAanalyze.Rcheck/HPAanalyze’

```
# poppr

<details>

* Version: 2.8.2
* Source code: https://github.com/cran/poppr
* URL: https://github.com/grunwaldlab/poppr, https://grunwaldlab.github.io/poppr, https://grunwaldlab.github.io/Population_Genetics_in_R/
* BugReports: https://github.com/grunwaldlab/poppr/issues
* Date/Publication: 2019-03-11 10:30:03 UTC
* Number of recursive dependencies: 97

Run `revdep_details(,"poppr")` for more info

</details>

## In both

*   checking whether package ‘poppr’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/wilke/github/cowplot/revdep/checks.noindex/poppr/new/poppr.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘poppr’ ...
** package ‘poppr’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
clang -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG   -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include -fopenmp -fPIC  -Wall -g -O2  -c adjust_missing.c -o adjust_missing.o
clang: error: unsupported option '-fopenmp'
make: *** [adjust_missing.o] Error 1
ERROR: compilation failed for package ‘poppr’
* removing ‘/Users/wilke/github/cowplot/revdep/checks.noindex/poppr/new/poppr.Rcheck/poppr’

```
### CRAN

```
* installing *source* package ‘poppr’ ...
** package ‘poppr’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
clang -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG   -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include -fopenmp -fPIC  -Wall -g -O2  -c adjust_missing.c -o adjust_missing.o
clang: error: unsupported option '-fopenmp'
make: *** [adjust_missing.o] Error 1
ERROR: compilation failed for package ‘poppr’
* removing ‘/Users/wilke/github/cowplot/revdep/checks.noindex/poppr/old/poppr.Rcheck/poppr’

```
# telefit

<details>

* Version: 1.0.1
* Source code: https://github.com/cran/telefit
* Date/Publication: 2019-02-18 10:50:03 UTC
* Number of recursive dependencies: 77

Run `revdep_details(,"telefit")` for more info

</details>

## In both

*   checking whether package ‘telefit’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/wilke/github/cowplot/revdep/checks.noindex/telefit/new/telefit.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘telefit’ ...
** package ‘telefit’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c GibbsSampler.cpp -o GibbsSampler.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c RWSampler.cpp -o RWSampler.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c RcppExports.cpp -o RcppExports.o
In file included from RcppExports.cpp:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Core:535:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/LU:47:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Jacobi:29:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:43:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/QR:17:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Householder:27:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SVD:48:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Geometry:58:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCore:66:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseQR:35:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
17 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c covs.cpp -o covs.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c distributions.cpp -o distributions.o
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Core:535:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/LU:47:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Jacobi:29:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:43:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/QR:17:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Householder:27:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SVD:48:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Geometry:58:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCore:66:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseQR:35:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
17 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c glm_gmrf.cpp -o glm_gmrf.o
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Core:535:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/LU:47:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Jacobi:29:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:43:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/QR:17:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Householder:27:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SVD:48:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Geometry:58:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCore:66:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseQR:35:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
17 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c mcstat.cpp -o mcstat.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c numAlg.cpp -o numAlg.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c stpglmmod.cpp -o stpglmmod.o
In file included from stpglmmod.cpp:9:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Core:535:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/LU:47:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Jacobi:29:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:43:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/QR:17:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Householder:27:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SVD:48:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Geometry:58:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCore:66:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseQR:35:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
17 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c stpmod.cpp -o stpmod.o
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Core:535:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/LU:47:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Jacobi:29:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:43:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/QR:17:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Householder:27:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SVD:48:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Geometry:58:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCore:66:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseQR:35:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
stpmod.cpp:967:8: warning: unused variable 'ncats' [-Wunused-variable]
                        int ncats = cat_breaks.n_elem + 1;
                            ^
18 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c stpnotation.cpp -o stpnotation.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c svcMod.cpp -o svcMod.o
In file included from svcMod.cpp:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Core:535:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/LU:47:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Jacobi:29:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:43:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/QR:17:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Householder:27:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SVD:48:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Geometry:58:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCore:66:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseQR:35:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
17 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c svcPredict.cpp -o svcPredict.o
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Core:535:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/LU:47:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Jacobi:29:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:43:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/QR:17:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Householder:27:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SVD:48:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Geometry:58:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCore:66:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseQR:35:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
17 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c transformations.cpp -o transformations.o
clang++ -std=gnu++11 -dynamiclib -Wl,-headerpad_max_install_names -undefined dynamic_lookup -single_module -multiply_defined suppress -L/Library/Frameworks/R.framework/Resources/lib -L/usr/local/lib -o telefit.so GibbsSampler.o RWSampler.o RcppExports.o covs.o distributions.o glm_gmrf.o mcstat.o numAlg.o stpglmmod.o stpmod.o stpnotation.o svcMod.o svcPredict.o transformations.o -L/Library/Frameworks/R.framework/Resources/lib -lRlapack -L/Library/Frameworks/R.framework/Resources/lib -lRblas -L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0 -L/usr/local/gfortran/lib -lgfortran -lquadmath -lm -F/Library/Frameworks/R.framework/.. -framework R -Wl,-framework -Wl,CoreFoundation
ld: warning: directory not found for option '-L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0'
ld: warning: directory not found for option '-L/usr/local/gfortran/lib'
ld: library not found for -lgfortran
clang: error: linker command failed with exit code 1 (use -v to see invocation)
make: *** [telefit.so] Error 1
ERROR: compilation failed for package ‘telefit’
* removing ‘/Users/wilke/github/cowplot/revdep/checks.noindex/telefit/new/telefit.Rcheck/telefit’

```
### CRAN

```
* installing *source* package ‘telefit’ ...
** package ‘telefit’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c GibbsSampler.cpp -o GibbsSampler.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c RWSampler.cpp -o RWSampler.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c RcppExports.cpp -o RcppExports.o
In file included from RcppExports.cpp:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Core:535:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/LU:47:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Jacobi:29:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:43:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/QR:17:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Householder:27:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SVD:48:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Geometry:58:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCore:66:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseQR:35:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
17 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c covs.cpp -o covs.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c distributions.cpp -o distributions.o
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Core:535:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/LU:47:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Jacobi:29:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:43:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/QR:17:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Householder:27:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SVD:48:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Geometry:58:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCore:66:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseQR:35:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
17 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c glm_gmrf.cpp -o glm_gmrf.o
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Core:535:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/LU:47:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Jacobi:29:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:43:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/QR:17:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Householder:27:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SVD:48:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Geometry:58:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCore:66:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseQR:35:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
17 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c mcstat.cpp -o mcstat.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c numAlg.cpp -o numAlg.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c stpglmmod.cpp -o stpglmmod.o
In file included from stpglmmod.cpp:9:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Core:535:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/LU:47:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Jacobi:29:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:43:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/QR:17:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Householder:27:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SVD:48:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Geometry:58:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCore:66:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseQR:35:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
17 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c stpmod.cpp -o stpmod.o
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Core:535:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/LU:47:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Jacobi:29:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:43:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/QR:17:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Householder:27:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SVD:48:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Geometry:58:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCore:66:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseQR:35:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
stpmod.cpp:967:8: warning: unused variable 'ncats' [-Wunused-variable]
                        int ncats = cat_breaks.n_elem + 1;
                            ^
18 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c stpnotation.cpp -o stpnotation.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c svcMod.cpp -o svcMod.o
In file included from svcMod.cpp:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Core:535:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/LU:47:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Jacobi:29:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:43:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/QR:17:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Householder:27:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SVD:48:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Geometry:58:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCore:66:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseQR:35:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
17 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c svcPredict.cpp -o svcPredict.o
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Core:535:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/LU:47:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Jacobi:29:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:43:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/QR:17:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Householder:27:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SVD:48:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Geometry:58:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCore:66:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseQR:35:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
17 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/wilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c transformations.cpp -o transformations.o
clang++ -std=gnu++11 -dynamiclib -Wl,-headerpad_max_install_names -undefined dynamic_lookup -single_module -multiply_defined suppress -L/Library/Frameworks/R.framework/Resources/lib -L/usr/local/lib -o telefit.so GibbsSampler.o RWSampler.o RcppExports.o covs.o distributions.o glm_gmrf.o mcstat.o numAlg.o stpglmmod.o stpmod.o stpnotation.o svcMod.o svcPredict.o transformations.o -L/Library/Frameworks/R.framework/Resources/lib -lRlapack -L/Library/Frameworks/R.framework/Resources/lib -lRblas -L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0 -L/usr/local/gfortran/lib -lgfortran -lquadmath -lm -F/Library/Frameworks/R.framework/.. -framework R -Wl,-framework -Wl,CoreFoundation
ld: warning: directory not found for option '-L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0'
ld: warning: directory not found for option '-L/usr/local/gfortran/lib'
ld: library not found for -lgfortran
clang: error: linker command failed with exit code 1 (use -v to see invocation)
make: *** [telefit.so] Error 1
ERROR: compilation failed for package ‘telefit’
* removing ‘/Users/wilke/github/cowplot/revdep/checks.noindex/telefit/old/telefit.Rcheck/telefit’

```
