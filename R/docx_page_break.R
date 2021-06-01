
#' add page break
#'
#' @export
#'
docx_page_break <- function(){
    docx <- get('docx',envir = .GlobalEnv)
    officer::body_add_break(docx, pos="after")
    docx_print()
    cat("\nadd page break")
}

