library(ggplot2)
ruta_excel <- "C:\\Users\\felip\\Downloads\\tasa_suicidios_mujeres.csv"
data <- read.csv(ruta_excel)
data <- data.frame(
  Años= c("2000","2010","2015","2016") ,  
  Promedios = c(mean(data$X2000),mean(data$X2010),mean(data$X2015),mean(data$X2016))
)
data

ggplot(data, aes(x=Años, y=Promedios,group=1)) + 
                    geom_line()+
                    geom_point()
