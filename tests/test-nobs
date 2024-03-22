library(testthat)

test_that("nobs is correct", {
  model <- readRDS("../output/models/linear_reg.rds")
  nobs <- model$nobs

  expect_equal(nobs, 1704)
})
