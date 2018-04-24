###QUESTION 1 OF 4 (TEST 7.1)

##Cargando archivo `Prac_Uni7/maices/meta/maizteocintle_SNP50k_meta_extended.txt`
##y guardándolo en fullmat

fullmat<-read.delim("../meta/maizteocintle_SNP50k_meta_extended.txt", header=TRUE, sep="\t")


#Tipo de objeto creado al cargar la base
class(fullmat)


#Viendo las primeras 6 líneas del archivo
head(fullmat, n=6L)


#Visualizando el número de muestras
length(fullmat$NSiembra)


#Obteniendo el número de estados para los que se tienen muestras
nlevels(fullmat$Estado)


#Muestras colectadas antes de 1980
x<-subset(fullmat, A.o._de_colecta<1980, na.rm = TRUE)
length(x$A.o._de_colecta)

#Muestras de cada raza
summary(fullmat$Raza)


#Promedio de altitud en la que fueron colectadas las muestras
mean(fullmat$Altitud, na.rm = TRUE)


#Altitud máxima y mínima en las que fueron colectadas
max(fullmat$Altitud, na.rm = TRUE)
min(fullmat$Altitud, na.rm = TRUE)


#Creando nueva data.frame de datos sólo con las muestras de la raza Olotillo
Olotillo<-subset(fullmat, Raza=="Olotillo")


#Creando nueva data.frame de datos sólo con las muestras de la raza Reventador, Jala y Ancho
RJA<-fullmat[fullmat$Raza %in% c("Reventador", "Jala", "Ancho"), ]


# Escribiendo la matriz anterior a un archivo llamado submat.cvs en /meta
write.csv(RJA, file="../meta/submat.cvs")



sessionInfo()

