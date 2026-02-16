#' Detect language
#'
#''hello_detect_language()' detects the language of basic greetings in English, French, Spanish, German and Italian
#'
#' @param greeting Input is a character vector
#'
#' @returns character vector
#' @export
#'
#' @examples
#' hello_detect_language('bonjour')
#' hello_detect_language('hi')
hello_detect_language <- function(greeting) {
  assertthat::assert_that(is.character(greeting), msg = "Greeting must be a character.")
  for (language in names(dictionary)) {
    if (greeting %in% dictionary[[language]]) {
      return(language)}
  }
  return("Unknown")
}
