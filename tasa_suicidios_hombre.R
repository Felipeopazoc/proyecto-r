library(readxl)
library(ggplot2)
ruta_excel <- "C:\\Users\\felip\\Downloads\\tasa_suicidios_hombres.csv"
data <- read.csv(ruta_excel)

años <- c("2000","2010","2015","2016")

promedio <- c(mean(data$X2000),mean(data$X2010),mean(data$X2015),mean(data$X2016))

tabla <- data.frame(anios,promedioxanio)

ggplot(data = tabla,aes(x=años,y=promedio))+
                ggtitle("Promedio suicidios de hombres cada \n100.000 habitantes en cada país del mundo")+
                geom_bar(color="blue",fill=rgb(0.1,0.4,0.5,0.7),stat="identity")
              
