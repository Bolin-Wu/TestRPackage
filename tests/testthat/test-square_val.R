test_that("square_val actually squares", {
  expect_equal(square_val(2), 4 )
  expect_error(square_val("cat"), "input must be numeric")

})



