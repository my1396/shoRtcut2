#' Insert equals from courser position to up to 80 characters
#'
#' @return equals inside RStudio
set_new_chapter2 <- function(){
    # set limit to which position dashes should be included
    nchars <- 81

    # grab current document information
    context <- rstudioapi::getActiveDocumentContext()
    # extract horizontal courser position in document
    context_col <- context$selection[[1]]$range$end["column"]

    # if a line has less than 81 characters, insert hyphens at the current line
    # up to 80 characters
    if (nchars > context_col) {
        rstudioapi::insertText(strrep("=", nchars - context_col))
    }
}
