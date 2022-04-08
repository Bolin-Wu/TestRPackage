#' @title  Take a numeric value and square it
#' @description It takes a numeric value, and squares it.
#' @param x A numeric value
#'
#' @return a numebr
#' @export
#'
#' @import dplyr
#'
#' @examples
#' square_val(2)
square_val <- function(x) {
  stopifnot("input must be numeric" = is.numeric(x))
  x^2
}
