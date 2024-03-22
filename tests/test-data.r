library(testdat)

test_that("year and country create unique id", {
    data <- fread("../output/data/gapminder.csv")
    
    expect_unique(data = data, c(year, country))
})

test_that("gdpPercap has correct range", {
    data <- fread("../output/data/gapminder.csv")
    
    expect_range(data = data, gdpPercap, 0, 1e6)
})

test_that("continent has correct values", {
    data <- fread("../output/data/gapminder.csv")
    
    expect_values(data = data, continent, c("Asia", "Europe", "Africa", "Americas", "Oceania"))
})
