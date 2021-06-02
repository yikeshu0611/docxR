#' create new docx file
#'
#' @param docxname one file name for docx
#'
#' @export
#'
create_docx <- function(docxname){
    if (missing(docxname)){
        if (! 'docxname' %in% ls(envir = .GlobalEnv)){
            docxname <- 'my_first.docx'
        }else{
            docxname <- get('docxname',envir = .GlobalEnv)
        }
    }

    if (tolower(do::right(docxname,5)) != '.docx'){
        docxname <- paste0(docxname,'.docx')
    }
    .docxname <<- docxname
    docx <- officer::read_docx()
    print(docx, target=.docxname)
    cat('\ncreate docx: ',docxname,' to ',getwd())
}
