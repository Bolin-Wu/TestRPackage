# substract n

substr_right <- function(x, n) {
  char_count <- nchar(x)
  sub_n <- n - 1
  substr(x, char_count - sub_n, char_count)
}
