setwd("/users/fefi/downloads/")
file <- paste0(getwd(),"/tarea2.csv")
data <- read.csv2(file=file, header = TRUE)
str(data)
names(data)


library(ggplot2)
#acciones de colbun en el tiempo
qplot(data$FECHA, data$colbun, xlab="fecha",ylab="colbun",main="valores de las acciones en el tiempo")
qplot(data$FECHA, data$retorno.colbun, xlab="fecha",ylab="retorno.colbun",main="variacion porcentual")
#desv.estan.
sd(data$retorno.colbun)
#regresion

regresionA <-lm(data$IGPA ~ data$colbun)
summary(regresionA)


# Acciones de cencosud en el tiempo
qplot(data$FECHA, data$cencosud, xlab="fecha",ylab="cencosud",main="valores de las acciones en el tiempo")
qplot(data$FECHA, data$retorno.cencosud, xlab="fecha",ylab="retorno.cencosud",main="variacion porcentual")
#desv.estan.
sd(data$retorno.cencosud)

regresioneB <-lm(data$IGPA ~ data$cencosud)
summary(regresioneB)

#Acciones de Corpbanca en el tiempo
qplot(data$FECHA, data$corpbanca, xlab="fecha",ylab="corpbanca",main="valores de las acciones en el tiempo")
qplot(data$FECHA, data$retorno.corpbanca, xlab="fecha",ylab="retorno.corpbanca",main="variacion porcentual")
#desv.estan.
sd(data$retorno.corpbanca)

regresionC <-lm(data$IGPA ~ data$corpbanca)
summary(regresionC)
