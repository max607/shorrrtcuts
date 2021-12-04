#' Insert dashes from courser position to up to 100 characters
#'
#' @return dashes inside RStudio
#'
#' @export
set_new_chapter <- function(){
  nchars <- 101  # set limit to which position dashes should be included
  context <- rstudioapi::getActiveDocumentContext()  # grab current document information
  context_col <- context$selection[[1]]$range$end["column"]  # extract horizontal courser position in document

  # if a line has less than 101 characters, insert hyphens at the current line up to 100 characters
  if (nchars > context_col) rstudioapi::insertText(strrep("-", nchars - context_col))
}
