library(tidyverse)
library(DT)
library(kableExtra)
ruta_excel <- "C:\\Users\\felip\\Downloads\\tasa_suicidios_mujeres.csv"
data <- read.csv(ruta_excel)


data_2000 <- data$X2000
maximo_2000 <- max(data_2000)
data_final <- data[data$X2000 == maximo_2000,]
data_final$Country

data_2010 <- data$X2010
maximo_2010 <- max(data_2010)
data_final2 <- data[data$X2010 == maximo_2010,]
data_final2$Country

data_2015 <- data$X2015
maximo_2015 <- max(data_2015)
data_final3 <- data[data$X2015 == maximo_2015,]
data_final3$Country

data_2016 <- data$X2016
maximo_2016 <- max(data_2016)
data_final4 <- data[data$X2016 == maximo_2016,]
data_final4$Country

paises <- c(data_final$Country,data_final2$Country[1], data_final3$Country, data_final4$Country )
cantidad_suicidios <- c(data_final$X2000, data_final2$X2010[1], data_final3$X2015, data_final4$X2016)
Año <- c("2000","2010","2015", "2016")
Tabla <- data.frame(Paises = paises, Suicidios = cantidad_suicidios, Año)

dt <-Tabla
dt %>%
  kbl() %>%
  kable_styling()

