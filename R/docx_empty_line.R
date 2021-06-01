
#' add empty line
#'
#' @param n number of empty line, default is 1
#'
#' @export
#'
docx_empty_line <- function(n=1){
    docx <- get('docx',envir = .GlobalEnv)
    for (i in 1:n) {
        officer::body_add_par(x = docx,value = ' ')
    }
    docx_print()
    cat(sprintf('\nadd %s empty line',n))
}

