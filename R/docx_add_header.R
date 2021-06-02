#' add Header
#'
#' @param header This is Header
#' @param level one numeric defaut is
#' @param size 16
#' @param align left
#' @param color black
#' @param bold TRUE
#' @param family Arial
#'
#' @export
#'
docx_add_header <- function(header='This is Header',level=1,
                            size=16,align='left',
                            color='black',bold=TRUE,family = 'Arial'){

    property <- officer::fp_text(color = color,
                                 bold = bold,
                                 font.size = size,
                                 font.family = family)
    ftext <- officer::ftext(header, property)
    para <- officer::fpar(ftext, fp_p = officer::fp_par(text.align = align))


    officer::read_docx(.docxname) |>
        officer::body_add_par(para,
                              style = sprintf("heading %s",level[1])) |>
        print(.docxname)
    cat('\nadd title')
}
