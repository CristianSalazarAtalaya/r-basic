anio_comienzo = 2018
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
  dias_anio_actual

}
necesitaEvaluar=0
if(encontrardia(dias,anio_comienzo)<dias){
  necesitaEvaluar=1
}


while(necesitaEvaluar>0) {
  dias_poranio=encontrardia(dias,anio_comienzo)
  
  if(dias_poranio>=dias){
    
    necesitaEvaluar=0
  }else{
    anio_comienzo=anio_comienzo+1
    dias=dias-dias_poranio
    
  }
  
}

dia_entero= floor(dias)
hora = dias -dia_entero
hora_mostrar= floor(hora*24)
sprintf("año: %i - dia %i hora %i",anio_comienzo,dia_entero,hora_mostrar )


