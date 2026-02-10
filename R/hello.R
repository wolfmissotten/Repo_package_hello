#' Says hello
#'
#' @param name char
#' @return char
#' @export
#' @examples
#' hello('wolf')
hello <- function(name = 'world') {
  paste('Hello', name)
}


