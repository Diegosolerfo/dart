/*
El cambio de divisas en la bolsa de Madrid el 25/08/1987 fue el siguiente
100 chelines austríacos = 956.871 pesetas
1 dólar EEUU = 122.499 pesetas
100 dracmas griegos = 88.607 pesetas
100 francos belgas = 323.728 pesetas
1 franco francés = 20.110 pesetas
1 libra esterlina = 178.938 pesetas
100 liras italianas = 9.289 pesetas
Lea una cantidad en chelines austriacos e imprima el equivalente en pesetas. Lea una
cantidad en dracmas griegos e imprima su equivalente en francos franceses. Finalmente, lea una
cantidad en pesetas e imprima su equivalente en dólares y liras italianas.
*/
import 'dart:io';
void main(){
  print("Segun este menu digite la opcion que desea convertir: ");
  print("1. De chelines a pesetas");
  print("2. De dracmas a francos franceses");
  print("3. De pesetas a dolares y liras italianas");
  print("Opcion: ");
  int opcion = int.parse(stdin.readLineSync()!);
  print(convertidor(opcion));
}
String? convertidor(int opcion){
  double salida=0,salida2=0;
  String? resultado;
  switch(opcion){
    case 1:
      print("Digite la cantidad en chelines austriacos: ");
      double chelines = double.parse(stdin.readLineSync()!);
      salida = (chelines * 956.871) / 100;
      resultado = "La cantidad en pesetas es: $salida";
      break;
    case 2:
      print("Digite la cantidad en dracmas griegos: ");
      double dracmas = double.parse(stdin.readLineSync()!);
      salida = (dracmas * 20.110) / 100;
      resultado = "La cantidad en francos franceses es: $salida";
      break;
    case 3:
      print("Digite la cantidad en pesetas: ");
      double pesetas = double.parse(stdin.readLineSync()!);
      salida = pesetas / 122.499;
      salida2 = (pesetas * 100) / 9.289;
      resultado = "La cantidad en dólares es: $salida y en liras italianas es: $salida2";
      break;

  }
  return resultado;
}