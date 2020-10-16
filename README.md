# AcidRoxygen

Shared roxygen2 documentation for [Acid Genomics][] packages.

## Installation

This is an [R][] package.

```r
if (!requireNamespace("remotes", quietly = TRUE)) {
    install.packages("remotes")
}
Sys.setenv(R_REMOTES_UPGRADE = "always")
# Set `GITHUB_PAT` in `~/.Renviron` if you get a rate limit error.
remotes::install_github("acidgenomics/acidroxygen")
```

[acid genomics]: https://acidgenomics.com/
[r]: https://www.r-project.org/
