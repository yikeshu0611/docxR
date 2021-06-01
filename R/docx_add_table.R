
#' add there line talbe
#'
#' @param tbl one data.frame
#'
#' @export
#'
docx_add_table=function(tbl){
    docx <- get('docx',envir = .GlobalEnv)
    ft <- flextable::flextable(tbl)
    ft <- flextable::set_table_properties(x = ft, layout = "autofit")
    flextable::body_add_flextable(docx,ft,split = FALSE,pos = 'after')
    docx_print()
    cat("\nadd table")
}
