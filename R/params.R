#' Shared parameter documentation
#'
#' @name params
#'
#' @param object Object.
#' @param x Object.
#' @param y Object.
#'
#' @param BPPARAM `bpparamClass`.
#'   BiocParallel parameter to specify the desired processor configuration.\cr
#'   We recommend using one of the following:
#'
#'   - [bpparam][BiocParallel::bpparam].
#'   - [SerialParam][BiocParallel::SerialParam].
#'   - [MulticoreParam][BiocParallel::MulticoreParam].
#' @param asis `logical(1)`.
#'   Set this to `TRUE` when using the function inside a loop or inside an R
#'   Markdown chunk with '`results = "asis"`' enabled.
#' @param assay `vector(1)`.
#'   Name or index of count matrix slotted in
#'   [`assays()`][SummarizedExperiment::assays]. When passing in a string, the
#'   name must be defined in
#'   [`assayNames()`][SummarizedExperiment::assayNames].
#' @param assays `SimpleList`.
#'   Count matrices, which must have matching dimensions. Counts can be passed
#'   in as either a dense matrix (`matrix`) or sparse matrix (`sparseMatrix`).
#' @param base `integer(1)`.
#'   Logarithm base.
#' @param captions `character` or `NULL`.
#'   Captions.
#'   If `NULL`, the names of the primary input list will be used automatically.
#' @param cells `character`.
#'   Cell identifiers.
#' @param censorSamples `character`.
#'   Specify a subset of samples to censor.
#' @param class `character(1)`.
#'   Object class.
#' @param classes `character`.
#'   Object classes.
#' @param closed `logical(2)`.
#'   Should the lower (1) and upper (2) bounaries be closed?
#' @param colData `DataFrame`.
#'   Metadata describing the assay columns. For bulk RNA-seq, this data
#'   describes the samples. For single-cell RNA-seq, this data describes the
#'   cells.
#' @param colnames `logical(1)`.
#'   Apply to column names.
#' @param compress `logical(1)` or `character(1)`.
#'   These character strings are currently allowed for [`save()`][base::save]:
#'   `"gzip"`, `"bzip2"`, or `"xz"`.
#' @param counts `matrix`.
#'   Count matrix. Normalized counts are recommended.
#' @param dir `character(1)`.
#'   Directory path.
#' @param ensemblRelease,release `integer(1)`.
#'   Ensembl release version (e.g. `90`). We recommend setting this value if
#'   possible, for improved reproducibility. When left unset, the latest release
#'   available via AnnotationHub/ensembldb is used. Note that the latest version
#'   available can vary, depending on the versions of AnnotationHub and
#'   ensembldb in use.
#' @param envir `environment`.
#'   Environment.
#' @param expression `character(1)`.
#'   Calculation to apply.
#'   Uses [`match.arg()`][base::match.arg] internally and defaults to the first
#'   argument in the `character` vector.
#' @param file `character(1)`.
#'   File path.
#' @param FUN `function`.
#' @param fun `function`.
#' @param gene2symbol `Gene2Symbol`.
#'   Gene-to-symbol mappings. Must contain `geneID` and `geneName` columns. See
#'   `Gene2Symbol` for more information.
#' @param genes `character`.
#'   Gene identifiers. It is considered better practice to input the stable gene
#'   identifiers from Ensembl (e.g. "ENSG00000000003") and not the (HGNC) gene
#'   symbols (e.g. "TSPN6"), if possible.
#' @param genomeBuild `character(1)`.
#'   Ensembl genome build assembly name (e.g. `"GRCh38"`). If set `NULL`,
#'   defaults to the most recent build available.
#'   Note: don't pass in UCSC build IDs (e.g. `"hg38"`).
#' @param gffFile `character(1)`.
#'   GFF/GTF (General Feature Format) file. Generally, we recommend using a GTF
#'   (GFFv2) instead of a GFFv3 file if possible.
#' @param headerLevel `integer(1)` (`1`-`7`).
#'   Markdown header level.
#' @param i
#'   Indices specifying elements to extract or replace. Indices are `numeric` or
#'   `character` vectors, empty (`missing`), or `NULL`.
#'
#'   For more information:
#'
#'   ```
#'   help(topic = "Extract", package = "base")
#'   ```
#' @param inherits `logical(1)`.
#'   Should the enclosing frames of the `environment` be searched?
#' @param interestingGroups `character`.
#'   Groups of interest that define the samples. If left unset, defaults to
#'   `sampleName`.
#' @param level `character(1)`.
#'   Return as genes or transcripts.
#' @param lower `numeric(1)`.
#'   Lower boundary.
#' @param metadata `list`.
#'   Metadata.
#' @param metric `character(1)`.
#'   Metric type, either `length` or `elements`.
#' @param msg `NULL` or `character(1)`.
#'   Custom message to return.
#' @param n `integer(1)`.
#'   Number to include.
#' @param ntop `integer(1)`.
#'   Number of top genes to label.
#' @param nullOK `logical(1)`.
#'   If set to `TRUE`, `x` may also be `NULL`.
#' @param ordered `logical(1)`.
#' @param organism `character(1)`.
#'   Full Latin organism name (e.g. "`Homo sapiens`").
#' @param overwrite `logical(1)`.
#'   Overwrite existing file on disk.
#' @param pattern `character(1)`.
#'   Pattern to use for matching.
#' @param prefilter `logical(1)`.
#'   Apply prefiltering. Remove zero count genes.
#' @param progress `logical(1)`.
#'   Show progress, using progress bars.
#' @param projectDir `character(1)`.
#'   Project directory path.
#' @param reducedDims `SimpleList`.
#'   List containing matrices of cell coordinates in reduced space.
#' @param removeNA `logical(1)`.
#'   Remove `NA` values from calculations.
#' @param return `character(1)`.
#'   Return type. Uses [`match.arg()`][base::match.arg] internally and defaults
#'   to the first argument in the `character` vector.
#' @param rowData `DataFrame`.
#'   Metadata describing the assay rows, if genomic ranges are not available.
#'   *Use rowRanges (GRanges) instead, if possible*.
#' @param rowRanges `GRanges` or `GRangesList`.
#'   Genomic ranges (e.g. genome annotations). Metadata describing the assay
#'   rows.
#' @param rownames `logical(1)`.
#'   Apply to row names.
#' @param sampleMetadataFile `character(1)`.
#'   Sample metadata file path. CSV or TSV is preferred, but Excel worksheets
#'   are also supported. Check the documentation for conventions and required
#'   columns.
#' @param samples `character`.
#'   Sample identifiers.
#' @param sort `logical(1)`.
#'   Resort using `sort`.
#' @param spikeNames `character`.
#'   Vector indicating which assay rows denote spike-in sequences (e.g. ERCCs).
#' @param tabset `logical(1)`.
#'   Include tabset marker.
#' @param text `character(1)`.
#'   Text.
#' @param title `character(1)`.
#'   Title.
#' @param traceback `logical(1)`.
#'   Include traceback in error message.
#'   See [`traceback()`][base::traceback] for details.
#'  `rlang::entrace()` also works nicely and can be set in `.Rprofile`.
#' @param transgeneNames `character`.
#'   Vector indicating which assay rows denote transgenes (e.g. EGFP, TDTOMATO).
#' @param tx2gene `Tx2Gene`.
#'   Transcript-to-gene mappings.
#' @param unicode `logical(1)`.
#'   Allow Unicode characters in console output.
#' @param uploadDir `character(1)`.
#'   Final upload directory path.
#' @param upper `numeric(1)`.
#'   Upper boundary.
#' @param url `character(1)`.
#'   Uniform Resource Locator (URL).
#' @param value Value to assign.
#' @param verbose `logical(1)`.
#'   Run the function with verbose output.
#' @param yaml `list`.
#'   YAML metadata.
#' @param zeroPropagate `logical(1)`.
#'   Allow propagation of zeroes.
#'
#' @param .xname Name of object defined in `x`.
#'   *Not intended to be used directly.*
#' @param .yname Name of object defined in `y`.
#'   *Not intended to be used directly.*
#'
#' @param ... Additional arguments.
#'
#' @return No value.
NULL
