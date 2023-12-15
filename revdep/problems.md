# dce

<details>

* Version: 1.10.0
* GitHub: https://github.com/cbg-ethz/dce
* Source code: https://github.com/cran/dce
* Date/Publication: 2023-10-24
* Number of recursive dependencies: 324

Run `revdepcheck::revdep_details(, "dce")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘dce-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: get_pathway_info
    > ### Title: Dataframe containing meta-information of pathways in database
    > ### Aliases: get_pathway_info
    > 
    > ### ** Examples
    > 
    > head(get_pathway_info(database_list = c("kegg")))
    ...
     11. │       └─graphite::pathways(query_species, database)
     12. │         └─graphite:::loadData(paste(species, database, sep = "-"))
     13. │           └─graphite:::archivePath(name)
     14. │             └─graphite:::archiveDir()
     15. │               └─base::stop("error creating directory: ", d)
     16. └─base::.handleSimpleError(...)
     17.   └─purrr (local) h(simpleError(msg, call))
     18.     └─cli::cli_abort(...)
     19.       └─rlang::abort(...)
    Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.3Mb
      sub-directories of 1Mb or more:
        doc   3.5Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    plot_network: no visible binding for global variable ‘.’
    Undefined global functions or variables:
      .
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 3 marked UTF-8 strings
    ```

# multiWGCNA

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/multiWGCNA
* Date/Publication: 2023-10-24
* Number of recursive dependencies: 175

Run `revdepcheck::revdep_details(, "multiWGCNA")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘multiWGCNA-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: cleanDatExpr
    > ### Title: cleanDatExpr
    > ### Aliases: cleanDatExpr
    > 
    > ### ** Examples
    > 
    > library(ExperimentHub)
    ...
      'lattice', 'learnr', 'lpSolve', 'markdown', 'mgcv', 'nlme', 'plyr', 'ragg',
      'reticulate', 'rnaturalearth', 'rpart', 's2', 'sass', 'scales', 'shiny',
      'sp', 'spatial', 'stringi', 'stringr', 'survival', 'systemfonts', 'terra',
      'testthat', 'textshaping', 'tinytex', 'units', 'vroom', 'waldo', 'wk', 'xml2'
    loading from cache
    Error: failed to load resource
      name: EH8223
      title: Astrocyte Ribotag SummarizedExperiment
      reason: error in evaluating the argument 'x' in selecting a method for function 'get': error reading from connection
    Execution halted
    ```

## In both

*   checking R code for possible problems ... NOTE
    ```
    bidirectionalBestMatches: no visible binding for global variable ‘mod1’
    bidirectionalBestMatches: no visible binding for global variable ‘mod2’
    bidirectionalBestMatches: no visible binding for global variable
      ‘overlap’
    coexpressionLineGraph: no visible binding for global variable ‘Var1’
    coexpressionLineGraph: no visible binding for global variable ‘value’
    coexpressionLineGraph: no visible binding for global variable ‘Var2’
    computeOverlapsFromWGCNA: no visible binding for global variable ‘mod1’
    computeOverlapsFromWGCNA: no visible binding for global variable ‘mod2’
    continuousFlowPlot: no visible global function definition for ‘ulist’
    ...
      ‘Zsum’
    preservationComparisonPlot: no visible binding for global variable
      ‘trait’
    preservationComparisonPlot: no visible binding for global variable
      ‘Module’
    topNGenes: no visible binding for global variable ‘kWithin’
    Undefined global functions or variables:
      Correlation Expression Gene Module Sample Status Var1 Var2 Zscore
      Zsum error kWithin layout_with_fr log10Pvalue mod1 mod2 overlap p.adj
      stratum trait ulist uniqueSortedData value zScoreMatrix
    ```

# ORFik

<details>

* Version: 1.22.1
* GitHub: https://github.com/Roleren/ORFik
* Source code: https://github.com/cran/ORFik
* Date/Publication: 2023-12-08
* Number of recursive dependencies: 156

Run `revdepcheck::revdep_details(, "ORFik")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘ORFik-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: download.SRA.metadata
    > ### Title: Downloads metadata from SRA
    > ### Aliases: download.SRA.metadata
    > 
    > ### ** Examples
    > 
    > ## Originally on SRA
    > download.SRA.metadata("SRP226389")
    Downloading metadata from:
    https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=sra&id=9232220,9232221,9232222,9232223,9232224,9232225&rettype=fasta&retmode=xml
    Error in open.connection(x, "rb") : HTTP error 429.
    Calls: download.SRA.metadata ... read_xml.character -> read_xml.connection -> open -> open.connection
    Execution halted
    ```

## In both

*   checking whether package ‘ORFik’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: package ‘S4Vectors’ was built under R version 4.3.2
      Warning: package ‘SummarizedExperiment’ was built under R version 4.3.2
    See ‘/Users/clauswilke/github/cowplot/revdep/checks.noindex/ORFik/new/ORFik.Rcheck/00install.out’ for details.
    ```

*   checking C++ specification ... NOTE
    ```
      Specified C++11: please drop specification unless essential
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  9.3Mb
      sub-directories of 1Mb or more:
        R     1.0Mb
        doc   5.6Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘GenomicFeatures:::.merge_seqinfo_and_infer_missing_seqlengths’
      ‘IRanges:::regroupBySupergroup’ ‘S4Vectors:::normarg_mcols’
      ‘biomartr:::getENSEMBL.Seq’ ‘biomartr:::getENSEMBL.gtf’
      See the note in ?`:::` about the use of this operator.
    ```

*   checking R code for possible problems ... NOTE
    ```
    DEG.plot.static: no visible binding for global variable ‘Regulation’
    DEG.plot.static: no visible binding for global variable ‘meanCounts’
    DEG.plot.static: no visible binding for global variable ‘LFC’
    DTEG.plot: no visible binding for global variable ‘Regulation’
    DTEG.plot: no visible binding for global variable ‘rna’
    DTEG.plot: no visible binding for global variable ‘rfp’
    QCplots: no visible binding for global variable ‘leaders’
    QCplots: no visible binding for global variable ‘trailers’
    QCstats.plot: no visible binding for global variable ‘variable’
    QCstats.plot: no visible binding for global variable ‘sample_total’
    ...
      start2 startCodonCoverage startRegionRelative subtitle sum.count
      sum_per_gene sum_txNorm te trailers uniprotswissprot
      upstream_kozak_strength utr3_len utr5_len value var_txNorm variable
      widths windowMean windowSD zscore
    Consider adding
      importFrom("base", "length")
      importFrom("graphics", "frame")
      importFrom("stats", "df")
      importFrom("utils", "browseURL", "head")
    to your NAMESPACE file.
    ```

