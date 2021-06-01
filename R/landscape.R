
#' start the the start landscape
#'
#' @export
#'
docx_start_landscape <- function(){
    docx <- get('docx',envir = .GlobalEnv)
    docx <- officer::body_end_section_continuous(docx)
    docx_print()
    cat("\norientate to the start")
}

#' start the the end landscape
#'
#' @export
#'
docx_end_landscape=function(){
    docx <- get('docx',envir = .GlobalEnv)
    officer::body_end_section_landscape(docx)
    docx_print()
    cat("\norientate to the end")
}
