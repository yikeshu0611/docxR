
#' add page break
#'
#' @export
#'
docx_next_page <- function(){
    officer::read_docx(.docxname) |>
        officer::body_add_break(pos="after") |>
        print(.docxname)
}

