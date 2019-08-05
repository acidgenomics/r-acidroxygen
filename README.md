# acidroxygen

Shared documentation files for R packages.

This package is part of the [basejump][] toolkit.

## Installation

### [R][] method

```r
if (!requireNamespace("remotes", quietly = TRUE)) {
    install.packages("remotes")
}
Sys.setenv(R_REMOTES_UPGRADE = "always")
# Set `GITHUB_PAT` in `~/.Renviron` if you get a rate limit error.
remotes::install_github("acidgenomics/acidroxygen")
```

[R]: https://www.r-project.org/
[basejump]: https://basejump.acidgenomics.com/
