#Esta linea no funciona por ahora
#lm(y|z)

installed.packages()

choose(5,2)
choose(5,3)

cos(60)
cospi(60)
cos(60*pi/180)


arcos(0.5)
acos(0.5)*180/pi


print(sqrt(2),22)
round(sqrt(2),22)
floor(sqrt(2))
ceiling(sqrt(2))


round((sqrt(2)^2)-2,2)
#MAXIMO 16 CIFRAS 

print(pi+5000000000000000,16)
round(pi+5,40)

#round redondea al par mas cercano a menso que sea 1
x = pi^2


e

c <- sqrt(5)

pi * sqrt(5) -> asd


edad = "30"


doble = function(x){x+2}
doble(5)

ls() #listar todos los elemtnos creados
rm(asd) #borrar una variable
ls()
#rm(list=ls()) #borra todas las variables


a=1
b=2
a+b

restar = function(a,b) {
  print(paste(sprintf("%i - %i = ",a,b),a-b))
}
restar(5,6)



exp(1)

log(1750,4)


print(atan(50),3)

fs = function(x){
  sqrt(x)*abs(-x)^3
  
}

fs(5)

ciclos4anios=(365*4)+1
horas=250000000/(60*60)
dias=horas/24


encontrardia = function(dias, anioInicio){
  dias_anio_actual=365
  if(anioInicio%%4==0 ){
    if(anioInicio%%100==0){
      if(anioInicio%%400==0){
        dias_anio_actual=dias_anio_actual+1
      }
    }
    else
    {
      dias_anio_actual=dias_anio_actual+1
    }
   
  }
  dias=dias-dias_anio_actual
  dias
}
anio_comienzo = 2018
while (dias>=365) {
  dias=encontrardia(dias,anio_comienzo)
  
  anio_comienzo=anio_comienzo+1
}


anio_comienzo






2020%%4==0

ciclos_ = dias/ciclos4anios

2020%%100==0 

#Biciesto


horas
dias
ciclos_






