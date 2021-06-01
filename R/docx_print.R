docx_print <- function(){
    docx <- get('docx',envir = .GlobalEnv)
    docxname <- get('docxname',envir = .GlobalEnv)
    print(docx, target=docxname)
}
