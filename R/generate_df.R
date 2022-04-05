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
