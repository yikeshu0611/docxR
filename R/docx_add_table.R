
#' add there line talbe
#'
#' @param tbl one data.frame
#' @param title title for talbe
#' @param foot foot for table
#'
#' @export
#'
docx_add_table=function(tbl,title=NULL,foot=NULL){
    # title
    if (!is.null(title)){
        docx_add_title(title,align = 'center')
    }
    # table
    ft <- flextable::flextable(tbl)
    ft <- flextable::set_table_properties(x = ft, layout = "autofit")

    officer::read_docx(.docxname) |>
        flextable::body_add_flextable(ft,split = FALSE,
                                      pos = 'after') |>
        print(.docxname)

    # foot
    if (!is.null(foot)){
        docx_add_text(foot,align = 'center')
    }

}
