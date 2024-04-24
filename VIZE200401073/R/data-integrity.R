#' Bu fonksiyon veri on isleme adimi icin kullanilir
#'
#'
#'
#' @param data veriyi alacak degisken
#'@export

data_preprocessing<-function(data) {
  # NA olan satırları sil
  data <- na.omit(data)

  # Year sütununu tarih formatına dönüştür
  data$Year <- as.Date(as.character(data$Year), format = "%Y")

  # Rating ve Ranking sütunlarını numeric formata dönüştür
  data$Rating <- as.numeric(data$Rating)
  data$Ranking <- as.numeric(data$Ranking)

  return(print(data))
}
