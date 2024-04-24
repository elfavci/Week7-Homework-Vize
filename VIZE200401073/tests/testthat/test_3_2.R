# data-integrity.R
library(testthat)
context("Veri Butunlugu Testleri")

# Veri butunlugu testleri
test_that("Veri setinin butunlugu", {
  expect_true(all(!is.na(data)), info = "veri setinde bos degerler var")
})
