## Updated 2022-03-14.

#' Shared parameter documentation
#'
#' @name params
#' @return No value.
#'
#' @param BPPARAM `bpparamClass`.
#' BiocParallel parameter to specify the desired processor configuration.\cr
#' We recommend using one of the following:
#'
#' - [bpparam][BiocParallel::bpparam].
#' - [SerialParam][BiocParallel::SerialParam].
#' - [MulticoreParam][BiocParallel::MulticoreParam].
#'
#' @param FUN `function`.
#'
#' @param MARGIN `integer(1-2)`.
#' Dimension where the function will be applied.
#' For a two-dimensional matrix:
#' `1` indicates rows;
#' `2` indicates columns;
#' `c(1, 2)` indicates rows and columns.
#'
#' @param alphaThreshold `numeric(1)` or `NULL`.
#' Adjusted P value ("alpha") cutoff. If left `NULL`, will use the cutoff
#' defined in the object.
#'
#' @param asis `logical(1)`.
#' Set this to `TRUE` when using the function inside a loop or inside an R
#' Markdown chunk with '`results = "asis"`' enabled.
#'
#' @param aspectRatio `integer(1)`.
#' Aspect ratio.
#'
#' @param assay `vector(1)`.
#' Assay name or index position.
#'
#' @param assays `SimpleList`.
#' Count matrices, which must have matching dimensions. Counts can be passed
#' in as either a dense matrix (`matrix`) or sparse matrix (`sparseMatrix`).
#'
#' @param base `integer(1)`.
#' Logarithm base.
#'
#' @param baseMeanThreshold `numeric(1)` or `NULL`.
#' Base mean (i.e. average expression across all samples) threshold.
#' If left `NULL`, will use the cutoff defined in the object.
#' Applies in general to DESeq2 RNA-seq differential expression output.
#'
#' @param borderColor `character(1)` or `NULL`.
#' Border color.
#'
#' @param captions `character` or `NULL`.
#' Captions.
#' If `NULL`, the names of the primary input list will be used automatically.
#'
#' @param cells `character`.
#' Cell identifiers.
#'
#' @param censorSamples `character`.
#' Specify a subset of samples to censor.
#'
#' @param class `character(1)`.
#' Object class.
#'
#' @param classes `character`.
#' Object classes.
#'
#' @param closed `logical(2)`.
#' Should the lower (1) and upper (2) bounaries be closed?
#'
#' @param colData `DataFrame`.
#' Metadata describing the assay columns. For bulk RNA-seq, this data
#' describes the samples. For single-cell RNA-seq, this data describes the
#' cells.
#'
#' @param colnames `logical(1)`.
#' Apply to column names.
#'
#' @param color `ScaleDiscrete`.
#' Desired ggplot2 color scale. Must supply discrete values. When set `NULL`,
#' the default ggplot2 color palette will be used. If manual color definitions
#' are desired, we recommend using `ggplot2::scale_color_manual()`.
#'
#' To set the discrete color palette globally, use:
#'
#' ```
#' options("acid.color.discrete" = ggplot2::scale_color_viridis_d())
#' ```
#'
#' @param compress `logical(1)` or `character(1)`.
#' These character strings are currently allowed for [`save()`][base::save]:
#' `"gzip"`, `"bzip2"`, or `"xz"`.
#'
#' @param convertGenesToSymbols `logical(1)`.
#' Attempt to automatically convert gene identifiers to gene symbols.
#' Only applies when object contains mappings defined in `rowRanges`.
#'
#' @param counts `matrix`.
#' Count matrix. Normalized counts are recommended.
#'
#' @param countsAxisLabel `character(1)`.
#' Counts axis label.
#'
#' @param dark `logical(1)`.
#' Plot against a dark background using the `acid_theme_light()` ggplot2
#' theme.
#'
#' @param dims `integer`.
#' Vector of length 2 that denotes the columns from the reduced dimension
#' matrix to use for `centerX` and `centerY` column calculations. Defaults the
#' first and second dimensions.
#'
#' @param dir `character(1)`.
#' Directory path.
#'
#' @param direction `character(1)`.
#' Include `"both"`, `"up"`, or `"down"` directions.
#'
#' @param ensemblRelease `integer(1)`.
#' Ensembl release version (e.g. `100`). We recommend setting this value if
#' possible, for improved reproducibility. When left unset, the latest release
#' available via AnnotationHub/ensembldb is used. Note that the latest version
#' available can vary, depending on the versions of AnnotationHub and
#' ensembldb in use.
#'
#' @param envir `environment`.
#' Environment.
#'
#' @param expression `character(1)`.
#' Calculation to apply.
#' Uses [`match.arg()`][base::match.arg] internally and defaults to the first
#' argument in the `character` vector.
#'
#' @param file `character(1)`.
#' File path.
#'
#' @param fill `ggproto`/`ScaleDiscrete`.
#' Desired ggplot2 fill scale. Must supply discrete values. When set to
#' `NULL`, the default ggplot2 color palette will be used. If manual color
#' definitions are desired, we recommend using `ggplot2::scale_fill_manual()`.
#'
#' To set the discrete fill palette globally, use:
#'
#' ```
#' options("acid.fill.discrete" = ggplot2::scale_fill_viridis_d())
#' ```
#' @param flip `logical(1)`.
#' Flip x and y axes. Recommended for plots containing many samples.
#'
#' @param fun `function`.
#'
#' @param gene2symbol `GeneToSymbol`.
#' Gene-to-symbol mappings. Must contain `geneId` and `geneName` columns. See
#' `GeneToSymbol` for more information.
#'
#' @param genes `character`.
#' Gene identifiers.
#'
#' @param genomeBuild `character(1)`.
#' Ensembl genome build assembly name (e.g. `"GRCh38"`). If set `NULL`,
#' defaults to the most recent build available.
#' *Note:* don't pass in UCSC build IDs (e.g. `"hg38"`).
#'
#' @param gffFile `character(1)`.
#' GFF/GTF (General Feature Format) file.
#' Generally, we recommend using GTF (GFFv2) instead of GFFv3.
#'
#' @param geom `character(1)`.
#' Plot type. Uses [`match.arg()`][base::match.arg] internally and defaults to
#' the first argument in the `character` vector.
#'
#' @param headerLevel `integer(1)` (`1`-`7`).
#' Markdown header level.
#'
#' @param i
#' Indices specifying elements to extract or replace. Indices are `numeric` or
#' `character` vectors, empty (`missing`), or `NULL`.
#'
#' For more information:
#'
#' ```
#' help(topic = "Extract", package = "base")
#' ```
#'
#' @param ignoreTxVersion `logical(1)`. Don't the include the transcript version
#' in the identifier. Only applies when `level = "transcripts"`. This
#' simplifies identifier matching when generating a `tx2gene` file.
#'
#' @param inherits `logical(1)`.
#' Should the enclosing frames of the `environment` be searched?
#'
#' @param interestingGroups `character`.
#' Groups of interest to use for visualization.
#' Corresponds to factors describing the columns of the object.
#'
#' @param j
#' Indices specifying elements to extract or replace. Indices are `numeric` or
#' `character` vectors, empty (`missing`), or `NULL`.
#'
#' For more information:
#'
#' ```
#' help(topic = "Extract", package = "base")
#' ```
#'
#' @param label `logical(1)`.
#' Superimpose sample text labels on the plot.
#'
#' @param labelSize `integer(1)`.
#' Size of the text label.
#'
#' @param labels `list`.
#' ggplot2 labels.
#' See `ggplot2::labs()` for details.
#'
#' @param lfcThreshold `numeric(1)` or `NULL`.
#' Log (base 2) fold change ratio cutoff threshold.
#' If left `NULL`, will use the cutoff defined in the object.
#'
#' @param level `character(1)`.
#' Return as genes or transcripts.
#'
#' @param legend `logical(1)`.
#' Include plot legend.
#'
#' @param limit `numeric(1)`.
#' Threshold limit.
#'
#' @param lower `numeric(1)`.
#' Lower boundary.
#'
#' @param max `numeric(1)`.
#' Recommended maximum value cutoff.
#'
#' @param metadata `list`.
#' Metadata.
#'
#' @param metric `character(1)`.
#' Metric type, either `length` or `elements`.
#'
#' @param min `numeric(1)`.
#' Recommended minimum value cutoff.
#'
#' @param minCounts `integer(1)`.
#' Minimum number of counts per feature (i.e. gene).
#'
#' @param msg `NULL` or `character(1)`.
#' Custom message to return.
#'
#' @param nMax `integer(1)`. or `Inf`.
#' Maximum number (i.e. of lines) to include.
#' Use `Inf` to not apply a limit.
#'
#' @param n `integer(1)`.
#' Number to include.
#'
#' @param ntop `integer(1)`.
#' Number of top features to label.
#'
#' @param nullOk `logical(1)`.
#' If set to `TRUE`, `x` may also be `NULL`.
#'
#' @param object Object.
#'
#' @param ordered `logical(1)`.
#'
#' @param organism `character(1)`.
#' Full Latin organism name (e.g. `"Homo sapiens"`).
#'
#' @param overwrite `logical(1)`.
#' Overwrite existing file on disk.
#'
#' @param pattern `character(1)`.
#' Pattern to use for matching.
#'
#' @param perMillion `logical(1)`.
#' Display as counts per million.
#'
#' @param perSample `logical(1)`.
#' Visualize the distributions per sample.
#'
#' @param pointAlpha `numeric(1)` (`0`-`1`).
#' Alpha transparency level.
#'
#' @param pointColor `character(1)`.
#' Default point color for the plot.
#'
#' @param pointScalar `integer(1)`.
#' Default point size for the plot.
#'
#' @param pointSize `numeric(1)`.
#' Point size for dots in the plot.
#' In the range of 1-3 is generally recommended.
#'
#' @param pointsAsNumbers `logical(1)`.
#' Plot the points as numbers (`TRUE`) or dots (`FALSE`).
#'
#' @param prefilter `logical(1)`.
#' Apply prefiltering. Remove zero count genes.
#'
#' @param progress `logical(1)`.
#' Show progress, using progress bars.
#'
#' @param projectDir `character(1)`.
#' Project directory path.
#'
#' @param quiet `logical(1)`.
#' Perform command quietly, suppressing messages.
#'
#' @param reducedDims `SimpleList`.
#' List containing matrices of cell coordinates in reduced space.
#'
#' @param reduction `vector(1)`.
#' Dimension reduction name or index position.
#'
#' @param release `integer(1)`.
#' Ensembl release version (e.g. `100`). We recommend setting this value if
#' possible, for improved reproducibility. When left unset, the latest release
#' available via AnnotationHub/ensembldb is used. Note that the latest version
#' available can vary, depending on the versions of AnnotationHub and
#' ensembldb in use.
#'
#' @param removeNa `logical(1)`.
#' Remove `NA` values from calculations.
#'
#' @param return `character(1)`.
#' Return type. Uses [`match.arg()`][base::match.arg] internally and defaults
#' to the first argument in the `character` vector.
#'
#' @param rowData `DataFrame`.
#' Metadata describing the assay rows, if genomic ranges are not available.
#' *Use `rowRanges` (`GenomicRanges`) instead, if possible*.
#'
#' @param rowRanges `GenomicRanges` or `GenomicRangesList`.
#' Genomic ranges (e.g. genome annotations). Metadata describing the assay
#' rows.
#'
#' @param rownames `logical(1)`.
#' Apply to row names.
#'
#' @param sampleMetadataFile `character(1)`.
#' Sample metadata file path. CSV or TSV is preferred, but Excel worksheets
#' are also supported. Check the documentation for conventions and required
#' columns.
#'
#' @param samples `character`.
#' Sample identifiers.
#'
#' @param sigPointColor `character`.
#' Color names for labeling upregulated and downregulated genes. Also supports
#' a character string for labeling DEGs with the same color, regardless of
#' direction.
#'
#' @param sort `logical(1)`.
#' Resort using `sort`.
#'
#' @param spikeNames `character`.
#' Vector indicating which assay rows denote spike-in sequences (e.g. ERCCs).
#'
#' @param subtitle `character(1)`.
#' Subtitle.
#'
#' @param tabset `logical(1)`.
#' Include tabset marker.
#'
#' @param text `character(1)`.
#' Text.
#'
#' @param title `character(1)`.
#' Title.
#'
#' @param traceback `logical(1)`.
#' Include traceback in error message.
#' See `traceback()` for details.
#' `rlang::entrace()` also works nicely and can be set in `.Rprofile`.
#'
#' @param trans `character(1)`.
#' Name of the axis scale transformation to apply.
#'
#' For more information:
#'
#' ```
#' help(topic = "scale_x_continuous", package = "ggplot2")
#' ```
#'
#' @param transgeneNames `character`.
#' Vector indicating which assay rows denote transgenes (e.g. EGFP, TDTOMATO).
#'
#' @param trendline `logical(1)`.
#' Include trendline on plot.
#'
#' @param tx2gene `TxToGene`.
#' Transcript-to-gene mappings.
#'
#' @param unicode `logical(1)`.
#' Allow Unicode characters in console output.
#'
#' @param uploadDir `character(1)`.
#' Final upload directory path.
#'
#' @param upper `numeric(1)`.
#' Upper boundary.
#'
#' @param url `character(1)`.
#' Uniform Resource Locator (URL).
#'
#' @param value Value to assign.
#'
#' @param verbose `logical(1)`.
#' Run the function with verbose output.
#'
#' @param x Object.
#'
#' @param y Object.
#'
#' @param yaml `list`.
#' YAML metadata.
#'
#' @param zeroPropagate `logical(1)`.
#' Allow propagation of zeroes.
#'
#' @param .xname Name of object defined in `x`.
#' *Not intended to be used directly.*
#'
#' @param .yname Name of object defined in `y`.
#' *Not intended to be used directly.*
#'
#' @param ... Additional arguments.
NULL
