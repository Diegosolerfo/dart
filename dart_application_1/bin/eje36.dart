/*
Dada una cantidad entera de Bolívares, desarrolle un algoritmo que permita desglosar dicha
cantidad en los billetes de curso legal en el País. Recuerde que estos son: 50000, 20000, 10000,
5000, 2000, 1000, 500, 100, 50, 20, 10.
*/
import 'dart:io';
void main(){
  print("Ingrese una cantidad entera de bolivares:");
  int cantidad = int.parse(stdin.readLineSync()!);
  if(cantidad <= 9){
    print("Por favor ingrese una cantidad mayor a 9 no hay biulltes menores a esa cantidad.");
    return;
  }
  if(cantidad >= 50000){
    int billetes50000 = cantidad ~/ 50000;
    cantidad = cantidad % 50000;
    print("Billetes de 50000: $billetes50000");
  }
  if(cantidad >= 20000){
    int billetes20000 = cantidad ~/ 20000;
    cantidad = cantidad % 20000;
    print("Billetes de 20000: $billetes20000");
  }
  if(cantidad >= 10000){
    int billetes10000 = cantidad ~/ 10000;
    cantidad = cantidad % 10000;
    print("Billetes de 10000: $billetes10000");
  }
  if(cantidad >= 5000){
    int billetes5000 = cantidad ~/ 5000;
    cantidad = cantidad % 5000;
    print("Billetes de 5000: $billetes5000");
  }
  if(cantidad >= 2000){
    int billetes2000 = cantidad ~/ 2000;
    cantidad = cantidad % 2000;
    print("Billetes de 2000: $billetes2000");
  }
  if(cantidad >= 1000){
    int billetes1000 = cantidad ~/ 1000;
    cantidad = cantidad % 1000;
    print("Billetes de 1000: $billetes1000");
  }
  if(cantidad >= 500){
    int billetes500 = cantidad ~/ 500;
    cantidad = cantidad % 500;
    print("Billetes de 500: $billetes500");
  }
  if(cantidad >= 100){
    int billetes100 = cantidad ~/ 100;
    cantidad = cantidad % 100;
    print("Billetes de 100: $billetes100");
  }
  if(cantidad >= 50){
    int billetes50 = cantidad ~/ 50;
    cantidad = cantidad % 50;
    print("Billetes de 50: $billetes50");
  }
  if(cantidad >= 20){
    int billetes20 = cantidad ~/ 20;
    cantidad = cantidad % 20;
    print("Billetes de 20: $billetes20");
  }
  if(cantidad >= 10){
    int billetes10 = cantidad ~/ 10;
    cantidad = cantidad % 10;
    print("Billetes de 10: $billetes10");
  }
}