#' Bu fonksiyon veri on isleme adimindaki temizlenmis veri setini db ye yazma islevini gerceklestirir
#'
#'
#'
#' @param data veriyi alacak degisken
#'@export

write_data_to_db <- function(data){


  con <- RSQLite::dbConnect(SQLite(), dbname = "Vize_Q2_200401073_avci_elif.sqlite")

  dbWriteTable(con, "BookSales_finish", data, overwrite = TRUE)
  dbDisconnect(con)
}
