/*
Construya un programa que, dados como datos la categoría y el sueldo del trabajador, calcule el
aumento correspondiente teniendo en cuenta la siguiente tabla:
categria             aumento
1                   15%
2                   10%
3                   8%
4                   7%
Como salida, mostrar la categoría del trabajador y su nuevo sueldo.
*/
import 'dart:io';
void main(){
  print('Ingrese la categoria del trabajador (1-4): ');
  int categoria = int.parse(stdin.readLineSync()!);
  print('Ingrese el sueldo del trabajador: ');
  double sueldo = double.parse(stdin.readLineSync()!);

  double aumento = 0;
  if(categoria == 1){
    aumento = sueldo * 0.15;
  }else if(categoria == 2){
    aumento = sueldo * 0.10;
  }else if(categoria == 3){
    aumento = sueldo * 0.08;
  }else if(categoria == 4){
    aumento = sueldo * 0.07;
  }

  double nuevoSueldo = sueldo + aumento;

  print("Categoría del trabajador: $categoria");
  print("Nuevo sueldo: \$$nuevoSueldo");
}