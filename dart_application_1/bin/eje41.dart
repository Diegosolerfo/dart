/*
El gobierno del estado de México desea reforestar un bosque que mide determinado número de
hectáreas. Si la superficie del terreno excede a 1 millón de metros cuadrados, entonces decidirá
sembrar de la siguiente manera:
PORCENTAJE DE LA SUPERFICIE DEL BOSQUE TIPO DE ÁRBOL
70% Pino
20% Oyamel
10% Cedro
Si la superficie del terreno es menor o igual a un millón de metros cuadrados, entonces decidirá
sembrar de la siguiente manera:
PORCENTAJE DE LA SUPERFICIE DEL BOSQUE TIPO DE ÁRBOL
50% Pino
30% Oyamel
20% Cedro
El gobierno desea saber el número de pinos, oyameles y cedros que tendrá que sembrar en el bosque,
si se sabe que en 10 metros cuadrados caben 8 pinos, en 15 metros cuadrados caben 15 oyameles y en
en 18 metros cuadrados caben 10 cedros. También se sabe que una hectárea equivale a 10 mil
metros cuadrados.
*/
import 'dart:io';
void main(){
  print("Ingrese el número de hectareas a reforestar:");
  double hectareas = double.parse(stdin.readLineSync()!);
  double metrosCuadrados = hectareas * 10000;

  double pinos = 0;
  double oyameles = 0;
  double cedros = 0;

  if (metrosCuadrados > 1000000) {
    pinos = (metrosCuadrados * 0.70) / 10 * 8;
    oyameles = (metrosCuadrados * 0.20) / 15 * 15;
    cedros = (metrosCuadrados * 0.10) / 18 * 10;
  } else {
    pinos = (metrosCuadrados * 0.50) / 10 * 8;
    oyameles = (metrosCuadrados * 0.30) / 15 * 15;
    cedros = (metrosCuadrados * 0.20) / 18 * 10;
  }

  print("Numero de pinos a sembrar: ${pinos.round()}");
  print("Numero de oyameles a sembrar: ${oyameles.round()}");
  print("Numero de cedros a sembrar: ${cedros.round()}");
}