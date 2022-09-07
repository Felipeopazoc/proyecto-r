library(ggplot2)
ruta_excel <- "C:\\Users\\felip\\Downloads\\tasa_suicidios_mujeres.csv"
data <- read.csv(ruta_excel)
data <- data.frame(
  Años= c("2000","2010","2015","2016") ,  
  Promedios = c(mean(data$X2000),mean(data$X2010),mean(data$X2015),mean(data$X2016))
)
data
# Barplot
ggplot(data, aes(x=Años, y=Promedios)) + 
  ggtitle("Promedio suicidios de mujeres cada \n100.000 habitantes en cada país del mundo")+
  geom_bar(color="blue",fill=rgb(0.1,0.4,0.5,0.7),stat="identity")
