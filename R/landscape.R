
#' start the the start landscape
#'
#' @export
#'
docx_start_landscape <- function(){
    officer::read_docx(.docxname) |>
        officer::body_end_section_continuous() |>
        print(.docxname)
}

#' start the the end landscape
#'
#' @export
#'
docx_end_landscape=function(){
    officer::read_docx(.docxname) |>
        officer::body_end_section_landscape() |>
        print(.docxname)
}
