/*
Una compañía de alquiler de automóviles sin conductor, desea calcular y mostrar lo que debe pagar
cada cliente, de acuerdo a las siguientes condiciones:
a. Si no se rebasan los 300 km, se cancelan 5000 Bolívares
b. Si la distancia recorrida es superior a 300 km
 Pero inferior a 1000 se cobran 5000 Bolívares más 200 Bolívares por cada kilómetro
superior a 300.
 Si es superior a 1000 se cobran 5000 Bolívares más 200 Bolívares por cada kilómetro,
para las distancias entre 300 y 1000 kilómetros y 150 Bolívares por cada kilómetro para
las distancias mayores a 1000.
*/
import 'dart:io';
void main(){
  print("Ingrese la distancia recorrida en km:");
  double distanciaRecorrida = double.parse(stdin.readLineSync()!);
  double totalAPagar = 0;
  if(distanciaRecorrida <= 300){
    totalAPagar = 5000;
  }else if(distanciaRecorrida > 300 && distanciaRecorrida <= 1000){
    totalAPagar = 5000 + (200 * (distanciaRecorrida - 300));
  }else {
    totalAPagar = 5000 + (200 * 700) + (150 * (distanciaRecorrida - 1000));
  }
  print("El total a pagar es: Bs. $totalAPagar");
}