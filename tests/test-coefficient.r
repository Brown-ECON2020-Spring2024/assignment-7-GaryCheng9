library(testthat)

test_that("gdpPercap coefficient is correct", {
  model <- readRDS("../output/models/linear_reg.rds")
  x <- summary(model)$coefficients[2]

  expect_equal(x, 0.00076, tolerance = 0.01)
})
