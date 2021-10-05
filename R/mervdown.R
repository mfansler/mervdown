#' mervdown: R Markdown Templates by Merv
#'
#' A set of opinionated R Markdown templates for scientific data analysis.
#'
#' @name mervdown
#' @docType package
#'
#' @examples
#' library(rmarkdown)
#'
#' ## start an analysis with plyranges
#' draft("0_plyranges_analysis", "plyranges", "mervdown")
#'
#' ## start an analysis with SingleCellExperiment
#' draft("1_scRNAseq_analysis", "sce", "mervdown")
#'
#' ## start an analysis with tidyverse packages
#' draft("2_ggplots", "tidyverse", "mervdown")
#'
#' @importFrom rmarkdown draft
NULL
