# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

power_num <- function(x) {
  stopifnot("input must be numeric" = is.numeric(x))

  x^3
}

generate_df = function(n = 10, with_seed = NULL){
  if(!is.null(with_seed)){set.seed(with_seed)}

  pad_length = paste0("%0", nchar(n), "d")
  random_int = sample(1:n, replace = TRUE)
  padded_int = sprintf(pad_length, random_int)

  tibble::tibble(
    id = paste0(
      sample(LETTERS, size = n, replace = TRUE), padded_int
    ),
    values = rnorm(n = n, mean = 15, sd = 2)
  )
}

# devtools::install_github("Bolin-Wu/TestRPackage")
