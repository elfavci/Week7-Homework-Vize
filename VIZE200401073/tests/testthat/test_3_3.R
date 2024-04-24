# data-write.R
library(testthat)
context("Veri Yazma Testleri")

# Veri yazma islevi testi
test_that("Veri yazma islevi dogru calisiyor mu?", {
  expect_true(write_data_to_db(data), info = "veri yazma islevi hatali")
})
