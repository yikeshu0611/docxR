#' Title
#'
#' @param title This is Title
#' @param size size, default is 15
#' @param family font family, default is Arial
#' @param bold TRUE
#' @param color black
#' @param italic FLASE
#' @param underlined FALSE
#' @param empty_line TRUE
#' @param vertical.align baseline
#'
#' @export
#'
docx_add_title <- function(title='This is Title',
                           size=15,
                           family='Arial',
                           bold=TRUE,
                           color = "black",
                           italic=FALSE,
                           underlined = FALSE,
                           empty_line=TRUE,
                           vertical.align='baseline'){
    docx <- get('docx',envir = .GlobalEnv)
    property <- officer::fp_text(color = color,
                                 font.size = size,
                                 bold = bold,
                                 italic = italic,
                                 underlined = underlined,
                                 font.family = family,
                                 vertical.align = vertical.align)
    title <- officer::fpar(officer::ftext(title, prop=property))
    officer::body_add_fpar(docx, title)
    cat('\nadd title')
    if (empty_line) docx_empty_line(n = 1)
    docx_print()
}
