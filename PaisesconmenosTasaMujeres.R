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
data_final2$X2010[1]


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


paises <- c(data_final$Country,data_final2$Country[1], data_final3$Country, data_final4$Country )
cantidad_suicidios <- c(data_final$X2000, data_final2$X2010[1], data_final3$X2015, data_final4$X2016)
Año <- c("2000","2010","2015", "2016")
Tabla <- data.frame(Paises = paises, Suicidios = cantidad_suicidios, Año)

dt <- Tabla
dt %>%
  kbl() %>%
  kable_styling()


