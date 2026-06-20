# AcidRoxygen

[![Install with Bioconda](https://img.shields.io/badge/install%20with-bioconda-brightgreen.svg)](https://bioconda.github.io/recipes/r-acidroxygen/README.html) ![Lifecycle: stable](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)

Shared [roxygen2][] documentation for [Acid Genomics][] packages.

## Installation

This is an [R][] package.

```r
install.packages(
    pkgs = "AcidRoxygen",
    repos = c(
        "https://r.acidgenomics.com",
        getOption("repos")
    ),
    dependencies = TRUE
)
```

### [Conda][] method

Configure [Conda][] to use the [Bioconda][] channels.

```sh
# Don't install recipe into base environment.
name='r-acidroxygen'
conda create --name="$name" "$name"
conda activate "$name"
R
```

[acid genomics]: https://acidgenomics.com/
[bioconda]: https://bioconda.github.io/
[conda]: https://docs.conda.io/
[r]: https://www.r-project.org/
[roxygen2]: https://roxygen2.r-lib.org/

## License

Apache-2.0 — Copyright 2019 Acid Genomics LLC — see [LICENSE.md](LICENSE.md).
