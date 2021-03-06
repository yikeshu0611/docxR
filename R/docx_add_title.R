#' add title
#'
#' @param title one title
#' @param size 16
#' @param align left
#' @param color black
#' @param bold TRUE
#' @param family Arial
#'
#' @export
#'
docx_add_title <- function(title,size=16,align='left',
                           color='black',bold=TRUE,family = 'Arial'){
    property <- officer::fp_text(color = color,
                                 bold = bold,
                                 font.size = size,
                                 font.family = family)
    ftext <- officer::ftext(title, property)
    para <- officer::fpar(ftext, fp_p = officer::fp_par(text.align = align))

    officer::read_docx(.docxname) |>
        officer::body_add_fpar(para) |>
        print(.docxname)
}
