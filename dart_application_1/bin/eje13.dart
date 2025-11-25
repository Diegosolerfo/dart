/*
Determine cuánto dinero hay en un banco que contiene 
N1 billetes de 50000, 
N2 billetes de 20000,
N3 billetes de 10000, 
N4 billetes de 5000, 
N5 billetes de 2000, 
N6 billetes 1000, 
N7 billetes de 500 y
N8 billetes de 100.
*/
import 'dart:io';
void main(){
  print("Digite la cantidad de billetes con valor de 50000:");
  int b1 = int.parse(stdin.readLineSync()!);
  print("Digite la cantidad de billetes con valor de 20000:");
  int b2 = int.parse(stdin.readLineSync()!);
  print("Digite la cantidad de billetes con valor de 10000:");
  int b3 = int.parse(stdin.readLineSync()!);
  print("Digite la cantidad de billetes con valor de 5000:");
  int b4 = int.parse(stdin.readLineSync()!);
  print("Digite la cantidad de billetes con valor de 2000:");
  int b5 = int.parse(stdin.readLineSync()!);
  print("Digite la cantidad de billetes con valor de 1000:");
  int b6 = int.parse(stdin.readLineSync()!);
  print("Digite la cantidad de billetes con valor de 500:");
  int b7 = int.parse(stdin.readLineSync()!);
  print("Digite la cantidad de billetes con valor de 100:");
  int b8 = int.parse(stdin.readLineSync()!);

  int Total = (b1*50000)+(b2*20000)+(b3*10000)+(b4*5000)+(b5*2000)+(b6*1000)+(b7*500)+(b8*100);
  
  print("El total de dinero que hay segun la cantidad y el valor de los billetes es: $Total");
}