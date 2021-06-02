#' append docx file
#'
#' @param name word name end with docx
#'
#' @export
#'
append_docx <- function(name){
    if (missing(name)) stop('name must be given')
    if (do::right(name,5) != '.docx') stop('name must end with .docx')
    .docxname <<- name
}
