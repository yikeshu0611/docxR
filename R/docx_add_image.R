
#' add image
#'
#' @param image image name or ggplot2 object
#' @param height height, 5 is dafult
#' @param width width, 5 is default
#' @param style centered
#'
#' @export
#'
docx_add_image=function(image, height=5, width=5,style="centered"){
    docx <- get('docx',envir = .GlobalEnv)
    officer::body_add_img(x = docx,
                          src = image,
                          height = height,
                          width = width,
                          style = style,
                          pos = "after")
    docx_empty_line()
    docx_print()
    message("\nadd image")
}
