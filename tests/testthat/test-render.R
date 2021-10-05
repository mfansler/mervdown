library(rmarkdown)

test_template <- function (template) {
    rmdfile <- tempfile(template, fileext=".Rmd")
    on.exit(unlink(rmdfile))
    htmlfile <- tempfile(template, fileext=".html")
    on.exit(unlink(htmlfile))

    ## make draft Rmd
    rmdfile_result <- draft(rmdfile, template, "mervdown", edit=FALSE)
    expect_identical(rmdfile, rmdfile_result)

    ## render Rmd to HTML
    htmlfile_result <- render(rmdfile, "html_document", output_file=htmlfile)
    expect_type(htmlfile_result, "character")
}

test_that("plyranges template drafts and renders", {
    test_template("plyranges")
})

test_that("sce template drafts and renders", {
    test_template("sce")
})

test_that("tidyverse template drafts and renders", {
    test_template("tidyverse")
})

