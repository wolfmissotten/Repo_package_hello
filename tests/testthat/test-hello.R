test_that("hello returns character string", {
  x <- hello('wolf')
  expect_type(x, 'character')
})
