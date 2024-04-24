#' Bu fonksiyon xlsx formatindaki veriyi  sqlite formatina donusturur.
#'
#'
#'

#'@export

create_sqlite_db<-function(){
  library(readxl)
  library(RSQLite)

  # Excel dosyasini  oku
  veri <- read_excel("TopBooks.xlsx")

  # SQLite veritabanina baglan
  con <- dbConnect(SQLite(), dbname = "Vize_Q2_200401073_avci_elif.sqlite")

  # Verileri SQLite veritabanina aktar
  dbWriteTable(con, "Book_sales", veri,overwrite=TRUE)
  dbListTables(con)

  data <- dbReadTable(con, "Book_sales")
  dbDisconnect(con)
  return(data)
}
