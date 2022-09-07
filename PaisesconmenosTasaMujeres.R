ruta_excel <- "C:\\Users\\felip\\Downloads\\tasa_suicidios_mujeres.csv"
data <- read.csv(ruta_excel)


data_2000 <- data$X2000
minimo_2000 <- min(data_2000)
data_final <- data[data$X2000 == minimo_2000,]
data_final$Country
data_final$X2000

data_2010 <- data$X2010
minimo_2010 <- min(data_2010)
data_final2 <- data[data$X2010 == minimo_2010,]
data_final2$Country
data_final2$X2010


data_2015 <- data$X2015
minimo_2015 <- min(data_2015)
data_final3 <- data[data$X2015 == minimo_2015,]
data_final3$Country
data_final3$X2015

data_2016 <- data$X2016
minimo_2016 <- min(data_2016)
data_final4 <- data[data$X2016 == minimo_2016,]
data_final4$Country
data_final4$X2016
