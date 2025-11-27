/*
Escriba un algoritmo, que dado como dato el sueldo de un trabajador, le aplique un aumento del
15% si su sueldo es inferior a Bs. 40.000 y 12% en caso contrario. Imprima el nuevo sueldo del
trabajador.
*/
import 'dart:io';

void main(){
  print("digite el sueldo: ");
  double sueldo = double.parse(stdin.readLineSync()!);

  if(sueldo < 40000){
    sueldo *= 1.15;
    print("Su sueldo es de: ${sueldo.toInt()} por el aumento debido a ser menor de 40.000");
  }else{
    sueldo *= 1.12;
    print("Su sueldo es de: ${sueldo.toInt()} por el aumento debido a ser mayor de 40.000");
  }
}