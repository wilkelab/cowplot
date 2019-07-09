# BASiCS

<details>

* Version: 1.6.0
* Source code: https://github.com/cran/BASiCS
* URL: https://github.com/catavallejos/BASiCS
* BugReports: https://github.com/catavallejos/BASiCS/issues
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 122

Run `revdep_details(,"BASiCS")` for more info

</details>

## In both

*   checking whether package ‘BASiCS’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/BASiCS/new/BASiCS.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘BASiCS’ ...
** using staged installation
** libs
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c BASiCS_DenoisedRates.cpp -o BASiCS_DenoisedRates.o
In file included from BASiCS_DenoisedRates.cpp:1:
In file included from ./utils.h:1:
In file included from ./MCMCcpp.h:15:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include/RcppArmadillo.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include/RcppArmadilloForward.h:26:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include/RcppCommon.h:128:
/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include/Rcpp/exceptions.h:109:53: warning: all paths through this function will call itself [-Winfinite-recursion]
    inline void warning(const std::string& message) {        // #nocov start
                                                    ^
1 warning generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c BASiCS_MCMCcpp.cpp -o BASiCS_MCMCcpp.o
In file included from BASiCS_MCMCcpp.cpp:1:
In file included from ./utils.h:1:
In file included from ./MCMCcpp.h:15:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include/RcppArmadillo.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include/RcppArmadilloForward.h:26:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include/RcppCommon.h:128:
/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include/Rcpp/exceptions.h:109:53: warning: all paths through this function will call itself [-Winfinite-recursion]
    inline void warning(const std::string& message) {        // #nocov start
                                                    ^
1 warning generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c BASiCS_MCMCcppNoSpikes.cpp -o BASiCS_MCMCcppNoSpikes.o
In file included from BASiCS_MCMCcppNoSpikes.cpp:1:
In file included from ./utils.h:1:
In file included from ./MCMCcpp.h:15:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include/RcppArmadillo.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include/RcppArmadilloForward.h:26:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include/RcppCommon.h:128:
/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include/Rcpp/exceptions.h:109:53: warning: all paths through this function will call itself [-Winfinite-recursion]
    inline void warning(const std::string& message) {        // #nocov start
                                                    ^
1 warning generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c BASiCS_MCMCcppReg.cpp -o BASiCS_MCMCcppReg.o
In file included from BASiCS_MCMCcppReg.cpp:1:
In file included from ./utils.h:1:
In file included from ./MCMCcpp.h:15:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include/RcppArmadillo.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include/RcppArmadilloForward.h:26:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include/RcppCommon.h:128:
/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include/Rcpp/exceptions.h:109:53: warning: all paths through this function will call itself [-Winfinite-recursion]
    inline void warning(const std::string& message) {        // #nocov start
                                                    ^
1 warning generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c BASiCS_MCMCcppRegNoSpikes.cpp -o BASiCS_MCMCcppRegNoSpikes.o
In file included from BASiCS_MCMCcppRegNoSpikes.cpp:1:
In file included from ./utils.h:1:
In file included from ./MCMCcpp.h:15:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include/RcppArmadillo.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include/RcppArmadilloForward.h:26:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include/RcppCommon.h:128:
/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include/Rcpp/exceptions.h:109:53: warning: all paths through this function will call itself [-Winfinite-recursion]
    inline void warning(const std::string& message) {        // #nocov start
                                                    ^
1 warning generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c RcppExports.cpp -o RcppExports.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c general_utils.cpp -o general_utils.o
In file included from general_utils.cpp:1:
In file included from ./utils.h:1:
In file included from ./MCMCcpp.h:15:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include/RcppArmadillo.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include/RcppArmadilloForward.h:26:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include/RcppCommon.h:128:
/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include/Rcpp/exceptions.h:109:53: warning: all paths through this function will call itself [-Winfinite-recursion]
    inline void warning(const std::string& message) {        // #nocov start
                                                    ^
1 warning generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c utils_MCMCcpp.cpp -o utils_MCMCcpp.o
In file included from utils_MCMCcpp.cpp:1:
In file included from ./utils.h:1:
In file included from ./MCMCcpp.h:15:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include/RcppArmadillo.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include/RcppArmadilloForward.h:26:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include/RcppCommon.h:128:
/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include/Rcpp/exceptions.h:109:53: warning: all paths through this function will call itself [-Winfinite-recursion]
    inline void warning(const std::string& message) {        // #nocov start
                                                    ^
1 warning generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c utils_MCMCcppNoSpikes.cpp -o utils_MCMCcppNoSpikes.o
In file included from utils_MCMCcppNoSpikes.cpp:1:
In file included from ./utils.h:1:
In file included from ./MCMCcpp.h:15:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include/RcppArmadillo.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include/RcppArmadilloForward.h:26:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include/RcppCommon.h:128:
/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include/Rcpp/exceptions.h:109:53: warning: all paths through this function will call itself [-Winfinite-recursion]
    inline void warning(const std::string& message) {        // #nocov start
                                                    ^
1 warning generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c utils_MCMCcppReg.cpp -o utils_MCMCcppReg.o
In file included from utils_MCMCcppReg.cpp:1:
In file included from ./utils.h:1:
In file included from ./MCMCcpp.h:15:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include/RcppArmadillo.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include/RcppArmadilloForward.h:26:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include/RcppCommon.h:128:
/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include/Rcpp/exceptions.h:109:53: warning: all paths through this function will call itself [-Winfinite-recursion]
    inline void warning(const std::string& message) {        // #nocov start
                                                    ^
1 warning generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c utils_MCMCcppRegNoSpikes.cpp -o utils_MCMCcppRegNoSpikes.o
In file included from utils_MCMCcppRegNoSpikes.cpp:1:
In file included from ./utils.h:1:
In file included from ./MCMCcpp.h:15:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include/RcppArmadillo.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include/RcppArmadilloForward.h:26:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include/RcppCommon.h:128:
/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include/Rcpp/exceptions.h:109:53: warning: all paths through this function will call itself [-Winfinite-recursion]
    inline void warning(const std::string& message) {        // #nocov start
                                                    ^
1 warning generated.
clang++ -std=gnu++11 -dynamiclib -Wl,-headerpad_max_install_names -undefined dynamic_lookup -single_module -multiply_defined suppress -L/Library/Frameworks/R.framework/Resources/lib -L/usr/local/lib -o BASiCS.so BASiCS_DenoisedRates.o BASiCS_MCMCcpp.o BASiCS_MCMCcppNoSpikes.o BASiCS_MCMCcppReg.o BASiCS_MCMCcppRegNoSpikes.o RcppExports.o general_utils.o utils_MCMCcpp.o utils_MCMCcppNoSpikes.o utils_MCMCcppReg.o utils_MCMCcppRegNoSpikes.o -L/Library/Frameworks/R.framework/Resources/lib -lRlapack -L/Library/Frameworks/R.framework/Resources/lib -lRblas -L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0 -L/usr/local/gfortran/lib -lgfortran -lquadmath -lm -F/Library/Frameworks/R.framework/.. -framework R -Wl,-framework -Wl,CoreFoundation
ld: warning: directory not found for option '-L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0'
ld: warning: directory not found for option '-L/usr/local/gfortran/lib'
ld: library not found for -lgfortran
clang: error: linker command failed with exit code 1 (use -v to see invocation)
make: *** [BASiCS.so] Error 1
ERROR: compilation failed for package ‘BASiCS’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/BASiCS/new/BASiCS.Rcheck/BASiCS’

```
### CRAN

```
* installing *source* package ‘BASiCS’ ...
** using staged installation
** libs
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c BASiCS_DenoisedRates.cpp -o BASiCS_DenoisedRates.o
In file included from BASiCS_DenoisedRates.cpp:1:
In file included from ./utils.h:1:
In file included from ./MCMCcpp.h:15:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include/RcppArmadillo.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include/RcppArmadilloForward.h:26:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include/RcppCommon.h:128:
/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include/Rcpp/exceptions.h:109:53: warning: all paths through this function will call itself [-Winfinite-recursion]
    inline void warning(const std::string& message) {        // #nocov start
                                                    ^
1 warning generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c BASiCS_MCMCcpp.cpp -o BASiCS_MCMCcpp.o
In file included from BASiCS_MCMCcpp.cpp:1:
In file included from ./utils.h:1:
In file included from ./MCMCcpp.h:15:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include/RcppArmadillo.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include/RcppArmadilloForward.h:26:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include/RcppCommon.h:128:
/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include/Rcpp/exceptions.h:109:53: warning: all paths through this function will call itself [-Winfinite-recursion]
    inline void warning(const std::string& message) {        // #nocov start
                                                    ^
1 warning generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c BASiCS_MCMCcppNoSpikes.cpp -o BASiCS_MCMCcppNoSpikes.o
In file included from BASiCS_MCMCcppNoSpikes.cpp:1:
In file included from ./utils.h:1:
In file included from ./MCMCcpp.h:15:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include/RcppArmadillo.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include/RcppArmadilloForward.h:26:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include/RcppCommon.h:128:
/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include/Rcpp/exceptions.h:109:53: warning: all paths through this function will call itself [-Winfinite-recursion]
    inline void warning(const std::string& message) {        // #nocov start
                                                    ^
1 warning generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c BASiCS_MCMCcppReg.cpp -o BASiCS_MCMCcppReg.o
In file included from BASiCS_MCMCcppReg.cpp:1:
In file included from ./utils.h:1:
In file included from ./MCMCcpp.h:15:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include/RcppArmadillo.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include/RcppArmadilloForward.h:26:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include/RcppCommon.h:128:
/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include/Rcpp/exceptions.h:109:53: warning: all paths through this function will call itself [-Winfinite-recursion]
    inline void warning(const std::string& message) {        // #nocov start
                                                    ^
1 warning generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c BASiCS_MCMCcppRegNoSpikes.cpp -o BASiCS_MCMCcppRegNoSpikes.o
In file included from BASiCS_MCMCcppRegNoSpikes.cpp:1:
In file included from ./utils.h:1:
In file included from ./MCMCcpp.h:15:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include/RcppArmadillo.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include/RcppArmadilloForward.h:26:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include/RcppCommon.h:128:
/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include/Rcpp/exceptions.h:109:53: warning: all paths through this function will call itself [-Winfinite-recursion]
    inline void warning(const std::string& message) {        // #nocov start
                                                    ^
1 warning generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c RcppExports.cpp -o RcppExports.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c general_utils.cpp -o general_utils.o
In file included from general_utils.cpp:1:
In file included from ./utils.h:1:
In file included from ./MCMCcpp.h:15:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include/RcppArmadillo.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include/RcppArmadilloForward.h:26:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include/RcppCommon.h:128:
/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include/Rcpp/exceptions.h:109:53: warning: all paths through this function will call itself [-Winfinite-recursion]
    inline void warning(const std::string& message) {        // #nocov start
                                                    ^
1 warning generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c utils_MCMCcpp.cpp -o utils_MCMCcpp.o
In file included from utils_MCMCcpp.cpp:1:
In file included from ./utils.h:1:
In file included from ./MCMCcpp.h:15:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include/RcppArmadillo.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include/RcppArmadilloForward.h:26:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include/RcppCommon.h:128:
/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include/Rcpp/exceptions.h:109:53: warning: all paths through this function will call itself [-Winfinite-recursion]
    inline void warning(const std::string& message) {        // #nocov start
                                                    ^
1 warning generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c utils_MCMCcppNoSpikes.cpp -o utils_MCMCcppNoSpikes.o
In file included from utils_MCMCcppNoSpikes.cpp:1:
In file included from ./utils.h:1:
In file included from ./MCMCcpp.h:15:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include/RcppArmadillo.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include/RcppArmadilloForward.h:26:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include/RcppCommon.h:128:
/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include/Rcpp/exceptions.h:109:53: warning: all paths through this function will call itself [-Winfinite-recursion]
    inline void warning(const std::string& message) {        // #nocov start
                                                    ^
1 warning generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c utils_MCMCcppReg.cpp -o utils_MCMCcppReg.o
In file included from utils_MCMCcppReg.cpp:1:
In file included from ./utils.h:1:
In file included from ./MCMCcpp.h:15:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include/RcppArmadillo.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include/RcppArmadilloForward.h:26:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include/RcppCommon.h:128:
/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include/Rcpp/exceptions.h:109:53: warning: all paths through this function will call itself [-Winfinite-recursion]
    inline void warning(const std::string& message) {        // #nocov start
                                                    ^
1 warning generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c utils_MCMCcppRegNoSpikes.cpp -o utils_MCMCcppRegNoSpikes.o
In file included from utils_MCMCcppRegNoSpikes.cpp:1:
In file included from ./utils.h:1:
In file included from ./MCMCcpp.h:15:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include/RcppArmadillo.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/RcppArmadillo/include/RcppArmadilloForward.h:26:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include/RcppCommon.h:128:
/Users/clauswilke/github/cowplot/revdep/library.noindex/BASiCS/Rcpp/include/Rcpp/exceptions.h:109:53: warning: all paths through this function will call itself [-Winfinite-recursion]
    inline void warning(const std::string& message) {        // #nocov start
                                                    ^
1 warning generated.
clang++ -std=gnu++11 -dynamiclib -Wl,-headerpad_max_install_names -undefined dynamic_lookup -single_module -multiply_defined suppress -L/Library/Frameworks/R.framework/Resources/lib -L/usr/local/lib -o BASiCS.so BASiCS_DenoisedRates.o BASiCS_MCMCcpp.o BASiCS_MCMCcppNoSpikes.o BASiCS_MCMCcppReg.o BASiCS_MCMCcppRegNoSpikes.o RcppExports.o general_utils.o utils_MCMCcpp.o utils_MCMCcppNoSpikes.o utils_MCMCcppReg.o utils_MCMCcppRegNoSpikes.o -L/Library/Frameworks/R.framework/Resources/lib -lRlapack -L/Library/Frameworks/R.framework/Resources/lib -lRblas -L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0 -L/usr/local/gfortran/lib -lgfortran -lquadmath -lm -F/Library/Frameworks/R.framework/.. -framework R -Wl,-framework -Wl,CoreFoundation
ld: warning: directory not found for option '-L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0'
ld: warning: directory not found for option '-L/usr/local/gfortran/lib'
ld: library not found for -lgfortran
clang: error: linker command failed with exit code 1 (use -v to see invocation)
make: *** [BASiCS.so] Error 1
ERROR: compilation failed for package ‘BASiCS’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/BASiCS/old/BASiCS.Rcheck/BASiCS’

```
# bigstatsr

<details>

* Version: 0.9.1
* Source code: https://github.com/cran/bigstatsr
* URL: https://privefl.github.io/bigstatsr
* BugReports: https://github.com/privefl/bigstatsr/issues
* Date/Publication: 2019-03-03 17:30:13 UTC
* Number of recursive dependencies: 81

Run `revdep_details(,"bigstatsr")` for more info

</details>

## In both

*   checking whether package ‘bigstatsr’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/bigstatsr/new/bigstatsr.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘bigstatsr’ ...
** package ‘bigstatsr’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c AUC.cpp -o AUC.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c FBM-extract.cpp -o FBM-extract.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c FBM-file.cpp -o FBM-file.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c FBM-replace.cpp -o FBM-replace.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c FBM-xptr.cpp -o FBM-xptr.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c RcppExports.cpp -o RcppExports.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c arma-prod.cpp -o arma-prod.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c biglassoLin.cpp -o biglassoLin.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c biglassoLog.cpp -o biglassoLog.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c biglassoUtils.cpp -o biglassoUtils.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c colstats.cpp -o colstats.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c counts.cpp -o counts.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c decode.cpp -o decode.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c errorMsgs.cpp -o errorMsgs.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c prodMatVec.cpp -o prodMatVec.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c transpose.cpp -o transpose.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c univRegLin5.cpp -o univRegLin5.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c univRegLog.cpp -o univRegLog.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c utils-mat.cpp -o utils-mat.o
clang++ -std=gnu++11 -dynamiclib -Wl,-headerpad_max_install_names -undefined dynamic_lookup -single_module -multiply_defined suppress -L/Library/Frameworks/R.framework/Resources/lib -L/usr/local/lib -o bigstatsr.so AUC.o FBM-extract.o FBM-file.o FBM-replace.o FBM-xptr.o RcppExports.o arma-prod.o biglassoLin.o biglassoLog.o biglassoUtils.o colstats.o counts.o decode.o errorMsgs.o prodMatVec.o transpose.o univRegLin5.o univRegLog.o utils-mat.o -L/Library/Frameworks/R.framework/Resources/lib -lRlapack -L/Library/Frameworks/R.framework/Resources/lib -lRblas -L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0 -L/usr/local/gfortran/lib -lgfortran -lquadmath -lm -F/Library/Frameworks/R.framework/.. -framework R -Wl,-framework -Wl,CoreFoundation
ld: warning: directory not found for option '-L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0'
ld: warning: directory not found for option '-L/usr/local/gfortran/lib'
ld: library not found for -lgfortran
clang: error: linker command failed with exit code 1 (use -v to see invocation)
make: *** [bigstatsr.so] Error 1
ERROR: compilation failed for package ‘bigstatsr’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/bigstatsr/new/bigstatsr.Rcheck/bigstatsr’

```
### CRAN

```
* installing *source* package ‘bigstatsr’ ...
** package ‘bigstatsr’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c AUC.cpp -o AUC.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c FBM-extract.cpp -o FBM-extract.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c FBM-file.cpp -o FBM-file.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c FBM-replace.cpp -o FBM-replace.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c FBM-xptr.cpp -o FBM-xptr.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c RcppExports.cpp -o RcppExports.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c arma-prod.cpp -o arma-prod.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c biglassoLin.cpp -o biglassoLin.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c biglassoLog.cpp -o biglassoLog.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c biglassoUtils.cpp -o biglassoUtils.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c colstats.cpp -o colstats.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c counts.cpp -o counts.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c decode.cpp -o decode.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c errorMsgs.cpp -o errorMsgs.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c prodMatVec.cpp -o prodMatVec.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c transpose.cpp -o transpose.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c univRegLin5.cpp -o univRegLin5.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c univRegLog.cpp -o univRegLog.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG -I../inst/include -DARMA_DONT_PRINT_OPENMP_WARNING -DARMA_DONT_PRINT_CXX11_WARNING -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/bigstatsr/rmio/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c utils-mat.cpp -o utils-mat.o
clang++ -std=gnu++11 -dynamiclib -Wl,-headerpad_max_install_names -undefined dynamic_lookup -single_module -multiply_defined suppress -L/Library/Frameworks/R.framework/Resources/lib -L/usr/local/lib -o bigstatsr.so AUC.o FBM-extract.o FBM-file.o FBM-replace.o FBM-xptr.o RcppExports.o arma-prod.o biglassoLin.o biglassoLog.o biglassoUtils.o colstats.o counts.o decode.o errorMsgs.o prodMatVec.o transpose.o univRegLin5.o univRegLog.o utils-mat.o -L/Library/Frameworks/R.framework/Resources/lib -lRlapack -L/Library/Frameworks/R.framework/Resources/lib -lRblas -L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0 -L/usr/local/gfortran/lib -lgfortran -lquadmath -lm -F/Library/Frameworks/R.framework/.. -framework R -Wl,-framework -Wl,CoreFoundation
ld: warning: directory not found for option '-L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0'
ld: warning: directory not found for option '-L/usr/local/gfortran/lib'
ld: library not found for -lgfortran
clang: error: linker command failed with exit code 1 (use -v to see invocation)
make: *** [bigstatsr.so] Error 1
ERROR: compilation failed for package ‘bigstatsr’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/bigstatsr/old/bigstatsr.Rcheck/bigstatsr’

```
# BPRMeth

<details>

* Version: 1.10.0
* Source code: https://github.com/cran/BPRMeth
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 83

Run `revdep_details(,"BPRMeth")` for more info

</details>

## In both

*   checking whether package ‘BPRMeth’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/BPRMeth/new/BPRMeth.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘BPRMeth’ ...
** using staged installation
** libs
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BPRMeth/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BPRMeth/RcppArmadillo/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include -fopenmp  -fPIC  -Wall -g -O2  -c RcppExports.cpp -o RcppExports.o
clang: error: unsupported option '-fopenmp'
make: *** [RcppExports.o] Error 1
ERROR: compilation failed for package ‘BPRMeth’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/BPRMeth/new/BPRMeth.Rcheck/BPRMeth’

```
### CRAN

```
* installing *source* package ‘BPRMeth’ ...
** using staged installation
** libs
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BPRMeth/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/BPRMeth/RcppArmadillo/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include -fopenmp  -fPIC  -Wall -g -O2  -c RcppExports.cpp -o RcppExports.o
clang: error: unsupported option '-fopenmp'
make: *** [RcppExports.o] Error 1
ERROR: compilation failed for package ‘BPRMeth’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/BPRMeth/old/BPRMeth.Rcheck/BPRMeth’

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
    See ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/CaseBasedReasoning/new/CaseBasedReasoning.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘CaseBasedReasoning’ ...
** package ‘CaseBasedReasoning’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppParallel/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c RcppExports.cpp -o RcppExports.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppParallel/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c distanceAPI.cpp -o distanceAPI.o
In file included from distanceAPI.cpp:1:
./distanceAPI.h:134:16: warning: 'rfDepthXYDistanceAPI::calc' hides overloaded virtual function [-Woverloaded-virtual]
  virtual void calc(arma::mat& xNodeIDs, arma::mat& yNodeIDs);
               ^
./distanceAPI.h:121:16: note: hidden overloaded virtual function 'rfDepthDistanceAPI::calc' declared here: different number of parameters (1 vs 2)
  virtual void calc(arma::mat& xNodeIDs);
               ^
In file included from distanceAPI.cpp:1:
In file included from ./distanceAPI.h:5:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include/RcppArmadillo.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include/RcppArmadilloForward.h:26:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/Rcpp/include/RcppCommon.h:29:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/Rcpp/include/Rcpp/r/headers.h:59:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/Rcpp/include/Rcpp/platform/compiler.h:153:
In file included from /Library/Developer/CommandLineTools/usr/include/c++/v1/unordered_map:384:
In file included from /Library/Developer/CommandLineTools/usr/include/c++/v1/__hash_table:16:
/Library/Developer/CommandLineTools/usr/include/c++/v1/memory:3706:5: warning: destructor called on non-final 'weightedDistance' that has virtual functions but non-virtual destructor [-Wdelete-non-virtual-dtor]
    __data_.second().~_Tp();
    ^
/Library/Developer/CommandLineTools/usr/include/c++/v1/memory:3667:9: note: in instantiation of member function 'std::__1::__shared_ptr_emplace<weightedDistance, std::__1::allocator<weightedDistance> >::__on_zero_shared' requested here
        __shared_ptr_emplace(_Alloc __a, _Args&& ...__args)
        ^
/Library/Developer/CommandLineTools/usr/include/c++/v1/memory:4327:26: note: in instantiation of function template specialization 'std::__1::__shared_ptr_emplace<weightedDistance, std::__1::allocator<weightedDistance> >::__shared_ptr_emplace<weightedDistance &>' requested here
    ::new(__hold2.get()) _CntrlBlk(__a2, _VSTD::forward<_Args>(__args)...);
                         ^
/Library/Developer/CommandLineTools/usr/include/c++/v1/memory:4706:29: note: in instantiation of function template specialization 'std::__1::shared_ptr<weightedDistance>::make_shared<weightedDistance &>' requested here
    return shared_ptr<_Tp>::make_shared(_VSTD::forward<_Args>(__args)...);
                            ^
distanceAPI.cpp:27:16: note: in instantiation of function template specialization 'std::__1::make_shared<weightedDistance, weightedDistance &>' requested here
  dist_ = std::make_shared<weightedDistance>(dist);
               ^
/Library/Developer/CommandLineTools/usr/include/c++/v1/memory:3706:23: note: qualify call to silence this warning
    __data_.second().~_Tp();
                      ^
/Library/Developer/CommandLineTools/usr/include/c++/v1/memory:3706:5: warning: destructor called on non-final 'rangerProximity' that has virtual functions but non-virtual destructor [-Wdelete-non-virtual-dtor]
    __data_.second().~_Tp();
    ^
/Library/Developer/CommandLineTools/usr/include/c++/v1/memory:3667:9: note: in instantiation of member function 'std::__1::__shared_ptr_emplace<rangerProximity, std::__1::allocator<rangerProximity> >::__on_zero_shared' requested here
        __shared_ptr_emplace(_Alloc __a, _Args&& ...__args)
        ^
/Library/Developer/CommandLineTools/usr/include/c++/v1/memory:4327:26: note: in instantiation of function template specialization 'std::__1::__shared_ptr_emplace<rangerProximity, std::__1::allocator<rangerProximity> >::__shared_ptr_emplace<rangerProximity &>' requested here
    ::new(__hold2.get()) _CntrlBlk(__a2, _VSTD::forward<_Args>(__args)...);
                         ^
/Library/Developer/CommandLineTools/usr/include/c++/v1/memory:4706:29: note: in instantiation of function template specialization 'std::__1::shared_ptr<rangerProximity>::make_shared<rangerProximity &>' requested here
    return shared_ptr<_Tp>::make_shared(_VSTD::forward<_Args>(__args)...);
                            ^
distanceAPI.cpp:89:16: note: in instantiation of function template specialization 'std::__1::make_shared<rangerProximity, rangerProximity &>' requested here
  dist_ = std::make_shared<rangerProximity>(dist);
               ^
/Library/Developer/CommandLineTools/usr/include/c++/v1/memory:3706:23: note: qualify call to silence this warning
    __data_.second().~_Tp();
                      ^
/Library/Developer/CommandLineTools/usr/include/c++/v1/memory:3706:5: warning: destructor called on non-final 'rfDepthDistance' that has virtual functions but non-virtual destructor [-Wdelete-non-virtual-dtor]
    __data_.second().~_Tp();
    ^
/Library/Developer/CommandLineTools/usr/include/c++/v1/memory:3667:9: note: in instantiation of member function 'std::__1::__shared_ptr_emplace<rfDepthDistance, std::__1::allocator<rfDepthDistance> >::__on_zero_shared' requested here
        __shared_ptr_emplace(_Alloc __a, _Args&& ...__args)
        ^
/Library/Developer/CommandLineTools/usr/include/c++/v1/memory:4327:26: note: in instantiation of function template specialization 'std::__1::__shared_ptr_emplace<rfDepthDistance, std::__1::allocator<rfDepthDistance> >::__shared_ptr_emplace<rfDepthDistance &>' requested here
    ::new(__hold2.get()) _CntrlBlk(__a2, _VSTD::forward<_Args>(__args)...);
                         ^
/Library/Developer/CommandLineTools/usr/include/c++/v1/memory:4706:29: note: in instantiation of function template specialization 'std::__1::shared_ptr<rfDepthDistance>::make_shared<rfDepthDistance &>' requested here
    return shared_ptr<_Tp>::make_shared(_VSTD::forward<_Args>(__args)...);
                            ^
distanceAPI.cpp:124:16: note: in instantiation of function template specialization 'std::__1::make_shared<rfDepthDistance, rfDepthDistance &>' requested here
  dist_ = std::make_shared<rfDepthDistance>(dist);
               ^
/Library/Developer/CommandLineTools/usr/include/c++/v1/memory:3706:23: note: qualify call to silence this warning
    __data_.second().~_Tp();
                      ^
4 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppParallel/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c distances.cpp -o distances.o
In file included from distances.cpp:4:
./distanceAPI.h:134:16: warning: 'rfDepthXYDistanceAPI::calc' hides overloaded virtual function [-Woverloaded-virtual]
  virtual void calc(arma::mat& xNodeIDs, arma::mat& yNodeIDs);
               ^
./distanceAPI.h:121:16: note: hidden overloaded virtual function 'rfDepthDistanceAPI::calc' declared here: different number of parameters (1 vs 2)
  virtual void calc(arma::mat& xNodeIDs);
               ^
1 warning generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppParallel/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c kNN.cpp -o kNN.o
kNN.cpp:25:19: warning: 'sort_index<arma::Mat<double> >' is deprecated [-Wdeprecated-declarations]
    order = arma::sort_index(tmpDist, sortDirection);
                  ^
/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include/armadillo_bits/fn_sort_index.hpp:40:1: note: 'sort_index<arma::Mat<double> >' has been explicitly marked deprecated here
arma_deprecated
^
/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include/armadillo_bits/compiler_setup.hpp:303:44: note: expanded from macro 'arma_deprecated'
    #define arma_deprecated __attribute__((__deprecated__))
                                           ^
1 warning generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppParallel/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c order.cpp -o order.o
order.cpp:26:21: warning: 'sort_index<arma::subview<double> >' is deprecated [-Wdeprecated-declarations]
      order = arma::sort_index(x_.col(i), sortDirection_);
                    ^
/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include/armadillo_bits/fn_sort_index.hpp:40:1: note: 'sort_index<arma::subview<double> >' has been explicitly marked deprecated here
arma_deprecated
^
/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include/armadillo_bits/compiler_setup.hpp:303:44: note: expanded from macro 'arma_deprecated'
    #define arma_deprecated __attribute__((__deprecated__))
                                           ^
order.cpp:75:28: warning: 'sort_index<arma::Mat<double> >' is deprecated [-Wdeprecated-declarations]
  arma::uvec order = arma::sort_index(x, sortDirection) + 1;
                           ^
/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include/armadillo_bits/fn_sort_index.hpp:40:1: note: 'sort_index<arma::Mat<double> >' has been explicitly marked deprecated here
arma_deprecated
^
/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include/armadillo_bits/compiler_setup.hpp:303:44: note: expanded from macro 'arma_deprecated'
    #define arma_deprecated __attribute__((__deprecated__))
                                           ^
2 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppParallel/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c parallelTerminalNodeID.cpp -o parallelTerminalNodeID.o
clang++ -std=gnu++11 -dynamiclib -Wl,-headerpad_max_install_names -undefined dynamic_lookup -single_module -multiply_defined suppress -L/Library/Frameworks/R.framework/Resources/lib -L/usr/local/lib -o CaseBasedReasoning.so RcppExports.o distanceAPI.o distances.o kNN.o order.o parallelTerminalNodeID.o -L/Library/Frameworks/R.framework/Resources/lib -lRlapack -L/Library/Frameworks/R.framework/Resources/lib -lRblas -L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0 -L/usr/local/gfortran/lib -lgfortran -lquadmath -lm -F/Library/Frameworks/R.framework/.. -framework R -Wl,-framework -Wl,CoreFoundation
ld: warning: directory not found for option '-L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0'
ld: warning: directory not found for option '-L/usr/local/gfortran/lib'
ld: library not found for -lgfortran
clang: error: linker command failed with exit code 1 (use -v to see invocation)
make: *** [CaseBasedReasoning.so] Error 1
ERROR: compilation failed for package ‘CaseBasedReasoning’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/CaseBasedReasoning/new/CaseBasedReasoning.Rcheck/CaseBasedReasoning’

```
### CRAN

```
* installing *source* package ‘CaseBasedReasoning’ ...
** package ‘CaseBasedReasoning’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppParallel/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c RcppExports.cpp -o RcppExports.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppParallel/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c distanceAPI.cpp -o distanceAPI.o
In file included from distanceAPI.cpp:1:
./distanceAPI.h:134:16: warning: 'rfDepthXYDistanceAPI::calc' hides overloaded virtual function [-Woverloaded-virtual]
  virtual void calc(arma::mat& xNodeIDs, arma::mat& yNodeIDs);
               ^
./distanceAPI.h:121:16: note: hidden overloaded virtual function 'rfDepthDistanceAPI::calc' declared here: different number of parameters (1 vs 2)
  virtual void calc(arma::mat& xNodeIDs);
               ^
In file included from distanceAPI.cpp:1:
In file included from ./distanceAPI.h:5:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include/RcppArmadillo.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include/RcppArmadilloForward.h:26:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/Rcpp/include/RcppCommon.h:29:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/Rcpp/include/Rcpp/r/headers.h:59:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/Rcpp/include/Rcpp/platform/compiler.h:153:
In file included from /Library/Developer/CommandLineTools/usr/include/c++/v1/unordered_map:384:
In file included from /Library/Developer/CommandLineTools/usr/include/c++/v1/__hash_table:16:
/Library/Developer/CommandLineTools/usr/include/c++/v1/memory:3706:5: warning: destructor called on non-final 'weightedDistance' that has virtual functions but non-virtual destructor [-Wdelete-non-virtual-dtor]
    __data_.second().~_Tp();
    ^
/Library/Developer/CommandLineTools/usr/include/c++/v1/memory:3667:9: note: in instantiation of member function 'std::__1::__shared_ptr_emplace<weightedDistance, std::__1::allocator<weightedDistance> >::__on_zero_shared' requested here
        __shared_ptr_emplace(_Alloc __a, _Args&& ...__args)
        ^
/Library/Developer/CommandLineTools/usr/include/c++/v1/memory:4327:26: note: in instantiation of function template specialization 'std::__1::__shared_ptr_emplace<weightedDistance, std::__1::allocator<weightedDistance> >::__shared_ptr_emplace<weightedDistance &>' requested here
    ::new(__hold2.get()) _CntrlBlk(__a2, _VSTD::forward<_Args>(__args)...);
                         ^
/Library/Developer/CommandLineTools/usr/include/c++/v1/memory:4706:29: note: in instantiation of function template specialization 'std::__1::shared_ptr<weightedDistance>::make_shared<weightedDistance &>' requested here
    return shared_ptr<_Tp>::make_shared(_VSTD::forward<_Args>(__args)...);
                            ^
distanceAPI.cpp:27:16: note: in instantiation of function template specialization 'std::__1::make_shared<weightedDistance, weightedDistance &>' requested here
  dist_ = std::make_shared<weightedDistance>(dist);
               ^
/Library/Developer/CommandLineTools/usr/include/c++/v1/memory:3706:23: note: qualify call to silence this warning
    __data_.second().~_Tp();
                      ^
/Library/Developer/CommandLineTools/usr/include/c++/v1/memory:3706:5: warning: destructor called on non-final 'rangerProximity' that has virtual functions but non-virtual destructor [-Wdelete-non-virtual-dtor]
    __data_.second().~_Tp();
    ^
/Library/Developer/CommandLineTools/usr/include/c++/v1/memory:3667:9: note: in instantiation of member function 'std::__1::__shared_ptr_emplace<rangerProximity, std::__1::allocator<rangerProximity> >::__on_zero_shared' requested here
        __shared_ptr_emplace(_Alloc __a, _Args&& ...__args)
        ^
/Library/Developer/CommandLineTools/usr/include/c++/v1/memory:4327:26: note: in instantiation of function template specialization 'std::__1::__shared_ptr_emplace<rangerProximity, std::__1::allocator<rangerProximity> >::__shared_ptr_emplace<rangerProximity &>' requested here
    ::new(__hold2.get()) _CntrlBlk(__a2, _VSTD::forward<_Args>(__args)...);
                         ^
/Library/Developer/CommandLineTools/usr/include/c++/v1/memory:4706:29: note: in instantiation of function template specialization 'std::__1::shared_ptr<rangerProximity>::make_shared<rangerProximity &>' requested here
    return shared_ptr<_Tp>::make_shared(_VSTD::forward<_Args>(__args)...);
                            ^
distanceAPI.cpp:89:16: note: in instantiation of function template specialization 'std::__1::make_shared<rangerProximity, rangerProximity &>' requested here
  dist_ = std::make_shared<rangerProximity>(dist);
               ^
/Library/Developer/CommandLineTools/usr/include/c++/v1/memory:3706:23: note: qualify call to silence this warning
    __data_.second().~_Tp();
                      ^
/Library/Developer/CommandLineTools/usr/include/c++/v1/memory:3706:5: warning: destructor called on non-final 'rfDepthDistance' that has virtual functions but non-virtual destructor [-Wdelete-non-virtual-dtor]
    __data_.second().~_Tp();
    ^
/Library/Developer/CommandLineTools/usr/include/c++/v1/memory:3667:9: note: in instantiation of member function 'std::__1::__shared_ptr_emplace<rfDepthDistance, std::__1::allocator<rfDepthDistance> >::__on_zero_shared' requested here
        __shared_ptr_emplace(_Alloc __a, _Args&& ...__args)
        ^
/Library/Developer/CommandLineTools/usr/include/c++/v1/memory:4327:26: note: in instantiation of function template specialization 'std::__1::__shared_ptr_emplace<rfDepthDistance, std::__1::allocator<rfDepthDistance> >::__shared_ptr_emplace<rfDepthDistance &>' requested here
    ::new(__hold2.get()) _CntrlBlk(__a2, _VSTD::forward<_Args>(__args)...);
                         ^
/Library/Developer/CommandLineTools/usr/include/c++/v1/memory:4706:29: note: in instantiation of function template specialization 'std::__1::shared_ptr<rfDepthDistance>::make_shared<rfDepthDistance &>' requested here
    return shared_ptr<_Tp>::make_shared(_VSTD::forward<_Args>(__args)...);
                            ^
distanceAPI.cpp:124:16: note: in instantiation of function template specialization 'std::__1::make_shared<rfDepthDistance, rfDepthDistance &>' requested here
  dist_ = std::make_shared<rfDepthDistance>(dist);
               ^
/Library/Developer/CommandLineTools/usr/include/c++/v1/memory:3706:23: note: qualify call to silence this warning
    __data_.second().~_Tp();
                      ^
4 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppParallel/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c distances.cpp -o distances.o
In file included from distances.cpp:4:
./distanceAPI.h:134:16: warning: 'rfDepthXYDistanceAPI::calc' hides overloaded virtual function [-Woverloaded-virtual]
  virtual void calc(arma::mat& xNodeIDs, arma::mat& yNodeIDs);
               ^
./distanceAPI.h:121:16: note: hidden overloaded virtual function 'rfDepthDistanceAPI::calc' declared here: different number of parameters (1 vs 2)
  virtual void calc(arma::mat& xNodeIDs);
               ^
1 warning generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppParallel/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c kNN.cpp -o kNN.o
kNN.cpp:25:19: warning: 'sort_index<arma::Mat<double> >' is deprecated [-Wdeprecated-declarations]
    order = arma::sort_index(tmpDist, sortDirection);
                  ^
/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include/armadillo_bits/fn_sort_index.hpp:40:1: note: 'sort_index<arma::Mat<double> >' has been explicitly marked deprecated here
arma_deprecated
^
/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include/armadillo_bits/compiler_setup.hpp:303:44: note: expanded from macro 'arma_deprecated'
    #define arma_deprecated __attribute__((__deprecated__))
                                           ^
1 warning generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppParallel/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c order.cpp -o order.o
order.cpp:26:21: warning: 'sort_index<arma::subview<double> >' is deprecated [-Wdeprecated-declarations]
      order = arma::sort_index(x_.col(i), sortDirection_);
                    ^
/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include/armadillo_bits/fn_sort_index.hpp:40:1: note: 'sort_index<arma::subview<double> >' has been explicitly marked deprecated here
arma_deprecated
^
/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include/armadillo_bits/compiler_setup.hpp:303:44: note: expanded from macro 'arma_deprecated'
    #define arma_deprecated __attribute__((__deprecated__))
                                           ^
order.cpp:75:28: warning: 'sort_index<arma::Mat<double> >' is deprecated [-Wdeprecated-declarations]
  arma::uvec order = arma::sort_index(x, sortDirection) + 1;
                           ^
/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include/armadillo_bits/fn_sort_index.hpp:40:1: note: 'sort_index<arma::Mat<double> >' has been explicitly marked deprecated here
arma_deprecated
^
/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include/armadillo_bits/compiler_setup.hpp:303:44: note: expanded from macro 'arma_deprecated'
    #define arma_deprecated __attribute__((__deprecated__))
                                           ^
2 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/CaseBasedReasoning/RcppParallel/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c parallelTerminalNodeID.cpp -o parallelTerminalNodeID.o
clang++ -std=gnu++11 -dynamiclib -Wl,-headerpad_max_install_names -undefined dynamic_lookup -single_module -multiply_defined suppress -L/Library/Frameworks/R.framework/Resources/lib -L/usr/local/lib -o CaseBasedReasoning.so RcppExports.o distanceAPI.o distances.o kNN.o order.o parallelTerminalNodeID.o -L/Library/Frameworks/R.framework/Resources/lib -lRlapack -L/Library/Frameworks/R.framework/Resources/lib -lRblas -L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0 -L/usr/local/gfortran/lib -lgfortran -lquadmath -lm -F/Library/Frameworks/R.framework/.. -framework R -Wl,-framework -Wl,CoreFoundation
ld: warning: directory not found for option '-L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0'
ld: warning: directory not found for option '-L/usr/local/gfortran/lib'
ld: library not found for -lgfortran
clang: error: linker command failed with exit code 1 (use -v to see invocation)
make: *** [CaseBasedReasoning.so] Error 1
ERROR: compilation failed for package ‘CaseBasedReasoning’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/CaseBasedReasoning/old/CaseBasedReasoning.Rcheck/CaseBasedReasoning’

```
# cytometree

<details>

* Version: 1.3.0
* Source code: https://github.com/cran/cytometree
* BugReports: https://github.com/sistm/Cytometree/issues
* Date/Publication: 2019-01-12 13:10:03 UTC
* Number of recursive dependencies: 57

Run `revdep_details(,"cytometree")` for more info

</details>

## In both

*   checking whether package ‘cytometree’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/cytometree/new/cytometree.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘cytometree’ ...
** package ‘cytometree’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/cytometree/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/cytometree/RcppArmadillo/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c FmeasureC.cpp -o FmeasureC.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/cytometree/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/cytometree/RcppArmadillo/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c RcppExports.cpp -o RcppExports.o
clang++ -std=gnu++11 -dynamiclib -Wl,-headerpad_max_install_names -undefined dynamic_lookup -single_module -multiply_defined suppress -L/Library/Frameworks/R.framework/Resources/lib -L/usr/local/lib -o cytometree.so FmeasureC.o RcppExports.o -L/Library/Frameworks/R.framework/Resources/lib -lRlapack -L/Library/Frameworks/R.framework/Resources/lib -lRblas -L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0 -L/usr/local/gfortran/lib -lgfortran -lquadmath -lm -F/Library/Frameworks/R.framework/.. -framework R -Wl,-framework -Wl,CoreFoundation
ld: warning: directory not found for option '-L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0'
ld: warning: directory not found for option '-L/usr/local/gfortran/lib'
ld: library not found for -lgfortran
clang: error: linker command failed with exit code 1 (use -v to see invocation)
make: *** [cytometree.so] Error 1
ERROR: compilation failed for package ‘cytometree’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/cytometree/new/cytometree.Rcheck/cytometree’

```
### CRAN

```
* installing *source* package ‘cytometree’ ...
** package ‘cytometree’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/cytometree/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/cytometree/RcppArmadillo/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c FmeasureC.cpp -o FmeasureC.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/cytometree/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/cytometree/RcppArmadillo/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c RcppExports.cpp -o RcppExports.o
clang++ -std=gnu++11 -dynamiclib -Wl,-headerpad_max_install_names -undefined dynamic_lookup -single_module -multiply_defined suppress -L/Library/Frameworks/R.framework/Resources/lib -L/usr/local/lib -o cytometree.so FmeasureC.o RcppExports.o -L/Library/Frameworks/R.framework/Resources/lib -lRlapack -L/Library/Frameworks/R.framework/Resources/lib -lRblas -L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0 -L/usr/local/gfortran/lib -lgfortran -lquadmath -lm -F/Library/Frameworks/R.framework/.. -framework R -Wl,-framework -Wl,CoreFoundation
ld: warning: directory not found for option '-L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0'
ld: warning: directory not found for option '-L/usr/local/gfortran/lib'
ld: library not found for -lgfortran
clang: error: linker command failed with exit code 1 (use -v to see invocation)
make: *** [cytometree.so] Error 1
ERROR: compilation failed for package ‘cytometree’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/cytometree/old/cytometree.Rcheck/cytometree’

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
# graper

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/graper
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 58

Run `revdep_details(,"graper")` for more info

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
** using staged installation
** libs
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/graper/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/graper/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/graper/BH/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c RcppExports.cpp -o RcppExports.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/graper/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/graper/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/graper/BH/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c fit_graper.cpp -o fit_graper.o
clang++ -std=gnu++11 -dynamiclib -Wl,-headerpad_max_install_names -undefined dynamic_lookup -single_module -multiply_defined suppress -L/Library/Frameworks/R.framework/Resources/lib -L/usr/local/lib -o graper.so RcppExports.o fit_graper.o -L/Library/Frameworks/R.framework/Resources/lib -lRlapack -L/Library/Frameworks/R.framework/Resources/lib -lRblas -L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0 -L/usr/local/gfortran/lib -lgfortran -lquadmath -lm -F/Library/Frameworks/R.framework/.. -framework R -Wl,-framework -Wl,CoreFoundation
ld: warning: directory not found for option '-L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0'
ld: warning: directory not found for option '-L/usr/local/gfortran/lib'
ld: library not found for -lgfortran
clang: error: linker command failed with exit code 1 (use -v to see invocation)
make: *** [graper.so] Error 1
ERROR: compilation failed for package ‘graper’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/graper/new/graper.Rcheck/graper’

```
### CRAN

```
* installing *source* package ‘graper’ ...
** using staged installation
** libs
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/graper/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/graper/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/graper/BH/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c RcppExports.cpp -o RcppExports.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/graper/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/graper/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/graper/BH/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c fit_graper.cpp -o fit_graper.o
clang++ -std=gnu++11 -dynamiclib -Wl,-headerpad_max_install_names -undefined dynamic_lookup -single_module -multiply_defined suppress -L/Library/Frameworks/R.framework/Resources/lib -L/usr/local/lib -o graper.so RcppExports.o fit_graper.o -L/Library/Frameworks/R.framework/Resources/lib -lRlapack -L/Library/Frameworks/R.framework/Resources/lib -lRblas -L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0 -L/usr/local/gfortran/lib -lgfortran -lquadmath -lm -F/Library/Frameworks/R.framework/.. -framework R -Wl,-framework -Wl,CoreFoundation
ld: warning: directory not found for option '-L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0'
ld: warning: directory not found for option '-L/usr/local/gfortran/lib'
ld: library not found for -lgfortran
clang: error: linker command failed with exit code 1 (use -v to see invocation)
make: *** [graper.so] Error 1
ERROR: compilation failed for package ‘graper’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/graper/old/graper.Rcheck/graper’

```
# MutationalPatterns

<details>

* Version: 1.10.0
* Source code: https://github.com/cran/MutationalPatterns
* URL: https://doi.org/10.1186/s13073-018-0539-0
* Date/Publication: 2019-05-02
* Number of recursive dependencies: 120

Run `revdep_details(,"MutationalPatterns")` for more info

</details>

## In both

*   R CMD check timed out
    

# poppr

<details>

* Version: 2.8.3
* Source code: https://github.com/cran/poppr
* URL: https://grunwaldlab.github.io/poppr, https://github.com/grunwaldlab/poppr, https://grunwaldlab.github.io/Population_Genetics_in_R/
* BugReports: https://github.com/grunwaldlab/poppr/issues
* Date/Publication: 2019-06-18 16:21:21 UTC
* Number of recursive dependencies: 98

Run `revdep_details(,"poppr")` for more info

</details>

## In both

*   checking whether package ‘poppr’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/poppr/new/poppr.Rcheck/00install.out’ for details.
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
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/poppr/new/poppr.Rcheck/poppr’

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
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/poppr/old/poppr.Rcheck/poppr’

```
# telefit

<details>

* Version: 1.0.1
* Source code: https://github.com/cran/telefit
* Date/Publication: 2019-02-18 10:50:03 UTC
* Number of recursive dependencies: 78

Run `revdep_details(,"telefit")` for more info

</details>

## In both

*   checking whether package ‘telefit’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/telefit/new/telefit.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘telefit’ ...
** package ‘telefit’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c GibbsSampler.cpp -o GibbsSampler.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c RWSampler.cpp -o RWSampler.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c RcppExports.cpp -o RcppExports.o
In file included from RcppExports.cpp:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Core:535:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/LU:47:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Jacobi:29:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:43:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/QR:17:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Householder:27:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SVD:48:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Geometry:58:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCore:66:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseQR:35:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
17 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c covs.cpp -o covs.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c distributions.cpp -o distributions.o
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Core:535:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/LU:47:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Jacobi:29:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:43:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/QR:17:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Householder:27:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SVD:48:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Geometry:58:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCore:66:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseQR:35:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
17 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c glm_gmrf.cpp -o glm_gmrf.o
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Core:535:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/LU:47:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Jacobi:29:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:43:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/QR:17:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Householder:27:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SVD:48:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Geometry:58:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCore:66:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseQR:35:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
17 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c mcstat.cpp -o mcstat.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c numAlg.cpp -o numAlg.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c stpglmmod.cpp -o stpglmmod.o
In file included from stpglmmod.cpp:9:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Core:535:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/LU:47:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Jacobi:29:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:43:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/QR:17:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Householder:27:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SVD:48:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Geometry:58:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCore:66:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseQR:35:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
17 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c stpmod.cpp -o stpmod.o
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Core:535:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/LU:47:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Jacobi:29:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:43:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/QR:17:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Householder:27:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SVD:48:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Geometry:58:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCore:66:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseQR:35:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
stpmod.cpp:967:8: warning: unused variable 'ncats' [-Wunused-variable]
                        int ncats = cat_breaks.n_elem + 1;
                            ^
stpmod.cpp:470:32: warning: private field 'R' is not used [-Wunused-private-field]
        double CProposed_logdet, one, R;
                                      ^
19 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c stpnotation.cpp -o stpnotation.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c svcMod.cpp -o svcMod.o
In file included from svcMod.cpp:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Core:535:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/LU:47:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Jacobi:29:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:43:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/QR:17:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Householder:27:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SVD:48:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Geometry:58:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCore:66:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseQR:35:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
17 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c svcPredict.cpp -o svcPredict.o
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Core:535:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/LU:47:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Jacobi:29:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:43:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/QR:17:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Householder:27:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SVD:48:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Geometry:58:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCore:66:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseQR:35:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
17 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c transformations.cpp -o transformations.o
clang++ -std=gnu++11 -dynamiclib -Wl,-headerpad_max_install_names -undefined dynamic_lookup -single_module -multiply_defined suppress -L/Library/Frameworks/R.framework/Resources/lib -L/usr/local/lib -o telefit.so GibbsSampler.o RWSampler.o RcppExports.o covs.o distributions.o glm_gmrf.o mcstat.o numAlg.o stpglmmod.o stpmod.o stpnotation.o svcMod.o svcPredict.o transformations.o -L/Library/Frameworks/R.framework/Resources/lib -lRlapack -L/Library/Frameworks/R.framework/Resources/lib -lRblas -L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0 -L/usr/local/gfortran/lib -lgfortran -lquadmath -lm -F/Library/Frameworks/R.framework/.. -framework R -Wl,-framework -Wl,CoreFoundation
ld: warning: directory not found for option '-L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0'
ld: warning: directory not found for option '-L/usr/local/gfortran/lib'
ld: library not found for -lgfortran
clang: error: linker command failed with exit code 1 (use -v to see invocation)
make: *** [telefit.so] Error 1
ERROR: compilation failed for package ‘telefit’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/telefit/new/telefit.Rcheck/telefit’

```
### CRAN

```
* installing *source* package ‘telefit’ ...
** package ‘telefit’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c GibbsSampler.cpp -o GibbsSampler.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c RWSampler.cpp -o RWSampler.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c RcppExports.cpp -o RcppExports.o
In file included from RcppExports.cpp:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Core:535:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/LU:47:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Jacobi:29:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:43:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/QR:17:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Householder:27:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SVD:48:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Geometry:58:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCore:66:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseQR:35:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from RcppExports.cpp:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
17 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c covs.cpp -o covs.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c distributions.cpp -o distributions.o
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Core:535:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/LU:47:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Jacobi:29:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:43:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/QR:17:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Householder:27:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SVD:48:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Geometry:58:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCore:66:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseQR:35:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from distributions.cpp:1:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
17 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c glm_gmrf.cpp -o glm_gmrf.o
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Core:535:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/LU:47:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Jacobi:29:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:43:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/QR:17:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Householder:27:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SVD:48:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Geometry:58:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCore:66:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseQR:35:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from glm_gmrf.cpp:1:
In file included from ./glm_gmrf.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
17 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c mcstat.cpp -o mcstat.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c numAlg.cpp -o numAlg.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c stpglmmod.cpp -o stpglmmod.o
In file included from stpglmmod.cpp:9:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Core:535:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/LU:47:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Jacobi:29:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:43:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/QR:17:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Householder:27:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SVD:48:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Geometry:58:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCore:66:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseQR:35:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpglmmod.cpp:9:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
17 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c stpmod.cpp -o stpmod.o
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Core:535:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/LU:47:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Jacobi:29:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:43:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/QR:17:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Householder:27:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SVD:48:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Geometry:58:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCore:66:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseQR:35:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from stpmod.cpp:4:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
stpmod.cpp:967:8: warning: unused variable 'ncats' [-Wunused-variable]
                        int ncats = cat_breaks.n_elem + 1;
                            ^
stpmod.cpp:470:32: warning: private field 'R' is not used [-Wunused-private-field]
        double CProposed_logdet, one, R;
                                      ^
19 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c stpnotation.cpp -o stpnotation.o
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c svcMod.cpp -o svcMod.o
In file included from svcMod.cpp:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Core:535:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/LU:47:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Jacobi:29:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:43:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/QR:17:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Householder:27:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SVD:48:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Geometry:58:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCore:66:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseQR:35:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcMod.cpp:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
17 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c svcPredict.cpp -o svcPredict.o
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:1:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Core:535:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:2:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/LU:47:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:12:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Jacobi:29:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:3:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Cholesky:43:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:4:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/QR:17:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Householder:27:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:5:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SVD:48:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:6:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Geometry:58:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:30:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Dense:7:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Eigenvalues:58:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:26:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCore:66:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:27:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/OrderingMethods:71:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:29:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseCholesky:43:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:32:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/SparseQR:35:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:31:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/Sparse:33:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/IterativeLinearSolvers:46:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:32:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/CholmodSupport:45:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:35:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/KroneckerProduct:34:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:39:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/Polynomials:135:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
In file included from svcPredict.cpp:9:
In file included from ./distributions.h:8:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigen.h:25:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/RcppEigenForward.h:40:
In file included from /Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/SparseExtra:51:
/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include/unsupported/Eigen/../../Eigen/src/Core/util/ReenableStupidWarnings.h:10:30: warning: pragma diagnostic pop could not pop, no matching push [-Wunknown-pragmas]
    #pragma clang diagnostic pop
                             ^
17 warnings generated.
clang++ -std=gnu++11 -I"/Library/Frameworks/R.framework/Resources/include" -DNDEBUG  -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/Rcpp/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppArmadillo/include" -I"/Users/clauswilke/github/cowplot/revdep/library.noindex/telefit/RcppEigen/include" -isysroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -I/usr/local/include  -fPIC  -Wall -g -O2  -c transformations.cpp -o transformations.o
clang++ -std=gnu++11 -dynamiclib -Wl,-headerpad_max_install_names -undefined dynamic_lookup -single_module -multiply_defined suppress -L/Library/Frameworks/R.framework/Resources/lib -L/usr/local/lib -o telefit.so GibbsSampler.o RWSampler.o RcppExports.o covs.o distributions.o glm_gmrf.o mcstat.o numAlg.o stpglmmod.o stpmod.o stpnotation.o svcMod.o svcPredict.o transformations.o -L/Library/Frameworks/R.framework/Resources/lib -lRlapack -L/Library/Frameworks/R.framework/Resources/lib -lRblas -L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0 -L/usr/local/gfortran/lib -lgfortran -lquadmath -lm -F/Library/Frameworks/R.framework/.. -framework R -Wl,-framework -Wl,CoreFoundation
ld: warning: directory not found for option '-L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0'
ld: warning: directory not found for option '-L/usr/local/gfortran/lib'
ld: library not found for -lgfortran
clang: error: linker command failed with exit code 1 (use -v to see invocation)
make: *** [telefit.so] Error 1
ERROR: compilation failed for package ‘telefit’
* removing ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/telefit/old/telefit.Rcheck/telefit’

```
