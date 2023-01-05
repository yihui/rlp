# rlp

This is an example package of using Literate Programming for developing R
packages. Most R package authors probably write R code in the R scripts under
the `R/` directory, and use comments to explain code. This package shows that
you do not have to develop a package in this way. You may write R code in R
Markdown documents, and extract the code to the `R/` directory automatically via
`knitr::purl()`. At the same time, you will get a nicely formatted output
document displaying the source code chunks as well as the text/prose chunks, and
this output document can be a package vignette. Please see the package homepage
for more details: <https://yihui.org/rlp/>. This package is licensed under MIT,
and you are welcome to file issues or submit pull requests.

## Acknowledgements

This approach is not possible (at least not easy) without a few important
components in the toolchain:

- The support for non-Sweave vignettes since R 3.0.0, which has opened far more
  possibilities than I originally imagined;
- The RStudio IDE, which allows us to build an R package by clicking a button;
- The **rmarkdown** package, which generates beautiful HTML/PDF output;
- GNU make, which makes it easy to define how and when to compile a file;

Let me also thank whomever invented holidays, which is often my most productive
time. Oh I cannot live without holidays.
