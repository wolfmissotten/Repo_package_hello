#' Says hello
#'
#' 'hello()' inserts the word hello before a word,
#' that should be a character, that is inserted.
#'
#' @param word Input of the type character
#' @return character.
#' @export
#' @examples
#' hello('wolf')
hello <- function(word = 'world') {
  assertthat::assert_that(is.character(word), msg = "Word must be a character.")
  paste('Hello', word)
}
