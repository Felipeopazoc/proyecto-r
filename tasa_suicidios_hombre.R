library(readxl)
library(ggplot2)
ruta_excel <- "C:\\Users\\felip\\Downloads\\tasa_suicidios_hombres.csv"
data <- read.csv(ruta_excel)

Años <- c("2000","2010","2015","2016")

Promedio <- c(mean(data$X2000),mean(data$X2010),mean(data$X2015),mean(data$X2016))

tabla <- data.frame(anios,promedioxanio)
tabla
ggplot(data = tabla,aes(x=Años,y=Promedio,group=1))+
              geom_line()+
              geom_point()
            
