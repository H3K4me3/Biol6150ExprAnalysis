#!/usr/bin/env Rscript

library(here)
library(rmarkdown)

render(input = here("report/microarray_explore.Rmd"), output_dir = "docs")
render(input = here("report/rnaseq_explore.Rmd"), output_dir = "docs")


