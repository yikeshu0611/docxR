#' add text
#'
#' @param text text
#' @param size 12
#' @param align left
#' @param color black
#' @param bold FALSE
#' @param family Arial
#'
#' @export
#'
docx_add_text <- function(text,size=10,align='left',
                          color='black',bold=FALSE,family = 'Arial'){
    # officer::read_docx(.docxname) |>
    #     officer::body_add_par(value = text, style = "Normal") |>
    #     print(.docxname)


    property <- officer::fp_text(color = color,
                                 bold = bold,
                                 font.size = size,
                                 font.family = family)
    ftext <- officer::ftext(text, property)
    para <- officer::fpar(ftext, fp_p = officer::fp_par(text.align = align))

    officer::read_docx(.docxname) |>
        officer::body_add_fpar(para) |>
        print(.docxname)
}
