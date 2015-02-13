library(RJSONIO)

#' @import htmlwidgets
#' @export
graph <- function(df,
                  width = NULL, height = NULL) {
  x <- list()
  for (i in 1:nrow(df)) {
    link <- list()
    for (label in colnames(df)) {
      link[[label]] <- df[i,label]
    }
    x[[i]] <- link
  }
  htmlwidgets::createWidget("d3graph", x, width = width, height = height)
}