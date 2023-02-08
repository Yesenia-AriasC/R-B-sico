# ver el directorio de trabajo con __Get working directory__
getwd()
# Colocar un directorio de trabajo
setwd("/Users/nayibeyeseniaariascortez/Desktop/R/computación estadística")
getwd()
# Instalar librerías
install.packages("readxl")
#Llamar la librería para usarla
library(readxl)
# obtener ayuda sobre una función (2 formas)
help(read_excel)
?read_excel

###############Libreria readxl#################
#_____ quiero leer la hoja 13 de un archivo excel  |sheet|______# 
plantulas1 <- read_excel("sample.xlsx",sheet=13,col_names=TRUE)
# FORMAS DE VER LO IMPORTADO
#   ver la estructura
str(plantulas1)
#   Head muestra los 6 primeros
head(plantulas1)
#   Tail muestra los últimos 6
tail(plantulas1)
#   abrirlo en ventana a parte
View(plantulas1) # V mayúscula

#_____ quiero leer la hoja llamada "Plantulas" de un archivo excel  |sheet|______# 
plantulas2 <- read_excel("sample.xlsx",sheet="Plantulas",col_names=TRUE)
str(plantulas2)

#_____ quiero leer los datos en las columnas "A" a la "E" de la hoja Plantulas del libro de Excel sample.xlsx  |range|______#
plantulas3 <- read_excel("sample.xlsx",sheet="Plantulas",col_names=TRUE,range=cell_cols("A:E"))
str(plantulas3)
plantulas3a <- read_excel("sample.xlsx",sheet="Plantulas",col_names=TRUE,range="B3:D5")
str(plantulas3a)

#_____ quiero leer los datos en las columnas "A" a la "E" de la hoja Plantulas del libro de Excel sample.xlsx  |range|______# 
plantulas4 <- read_excel("sample.xlsx",sheet="Plantulas",col_names=TRUE,range=cell_cols(1:5))
str(plantulas4)

#_____ quiero leer los datos en las filas 2 a la 5 de la hoja Plantulas del libro de Excel sample.xlsx  |range|______# 
plantulas5 <- read_excel("sample.xlsx",sheet="Plantulas",col_names=TRUE,range=cell_rows(2:5))
str(plantulas5)

#_____ quiero leer solo las primeras 35 filas de datos en la hoja Plantulas del libro de Excel sample.xlsx  |range|______# 
plantulas7 <- read_excel("sample.xlsx",sheet="Plantulas",col_names=TRUE,n_max=35)
str(plantulas7)

#_____  dándole nombres personalizados a las variables |col_names y skip: omitir nombres que traen las columnas en el archivo|______# 
plantulas8 <- read_excel("sample.xlsx",sheet="Plantulas",skip=1,
                         col_names=c("IdParcela","N_I","IdPlantula","N_i","Altura"))
str(plantulas8)

#_____  cambiar tipo de variable de las columnas |col_types|______# 
help(read_excel)
plantulas9 <- read_excel("sample.xlsx",sheet="Plantulas",skip=1,
                         col_names=c("IdParcela","N_I","IdPlantula","N_i","Altura"),
                         col_types=c("text","numeric","text","numeric","numeric"))
str(plantulas9)

# Se leen los datos en la hoja Plantulas del libro de Excel sample.xlsx, dándole nombres personalizados a las variables y 
#leyendo estas últimas con formato text, skip, text, guess y numeric, respectivamente. 
#Por lo tanto, la segunda variable se excluye y el tipo de la cuarta variable se especifica a partir de una inspección de los datos.
plantulas10 <- read_excel("sample.xlsx",sheet="Plantulas",skip=1,
                          col_names=c("IdParcela","IdPlantula","N_i","Altura"),
                          col_types=c("text","skip","text","guess","numeric"))
str(plantulas10)

