
#' add image
#'
#' @param image image name or ggplot2 object
#' @param height height, 5 is dafult
#' @param width width, 5 is default
#' @param style centered
#' @param title title for image
#' @param foot foot for image
#'
#' @export
#'
docx_add_image <- function(image, height=5, width=5,style="centered",
                           title=NULL,foot=NULL){
    if (!is.null(title)){
        docx_add_title(title,align = 'center')
    }
    officer::read_docx(.docxname) |>
        officer::body_add_img(src = image,
                              height = height,
                              width = width,
                              style = style,
                              pos = "after") |>
        print(.docxname)
    if (!is.null(foot)){
        docx_add_text(foot,align = 'center')
    }
}
