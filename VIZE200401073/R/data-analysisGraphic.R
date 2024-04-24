#' Bu fonksiyon veri analizi yapmamizi ve gerekli grafikleri cizdirmemizi saglar
#'
#'
#'
#' @param data veriyi alacak degisken
#'@export

analysis_graphic<-function(data){
  library(dygraphs)
  library(ggplot2)


  avg_rating <- aggregate(Rating ~ Year, data = data, FUN = mean)


  plot1 <- ggplot(avg_rating, aes(x = factor(Year), y = Rating)) +
    geom_point(color = "blue", size = 3) +  # Nokta grafiği ekleyin
    labs(title = "Yıllara Göre Ortalama Rating", x = "Yıl", y = "Ortalama Rating") +
    theme(axis.text.x = element_text(angle = 45, hjust = 1))



  filtered_data <- subset(data, Ranking == 1)

  bar_plot <- ggplot(data = filtered_data, aes(x = Name, y = Rating)) +
    geom_bar(stat = "identity", position="dodge", fill = "blueviolet", colour = "black") +
    labs(title = "Ranking değeri 1 olan kitapların incelemesi", x = "Kitap Adı", y = "Rating") +
    theme(axis.text.x = element_text(angle = 25, hjust = 1))


  return(print(list(plot1, bar_plot)))



}
