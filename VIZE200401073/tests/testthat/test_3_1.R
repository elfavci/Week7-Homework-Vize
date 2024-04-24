# data-presence.R
library(testthat)
context("Veri Varlığı Testleri")

# Veri var mı kontrolu
test_that("Veri seti var mı?", {
  expect_true(exists("data"), info = "veri seti mevcut değil")
})

# Diğer veri varlığı testleri buraya eklenebilir
