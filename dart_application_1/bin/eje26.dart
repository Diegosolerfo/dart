/*
Dados los datos A, B, C y D que representan números enteros; escriba un algoritmo que calcule el
resultado de las siguientes expresiones:
Si D=0 (A-C)2
Si D>0 (A-B )3
D
*/
import 'dart:io';
import 'dart:math';
void main(){
  print("digite el valor de A: ");
  double a = double.parse(stdin.readLineSync()!);
  print("digite el valor de B: ");
  double b = double.parse(stdin.readLineSync()!);
  print("digite el valor de C: ");
  double c = double.parse(stdin.readLineSync()!);
  print("digite el valor de D: ");
  double d = double.parse(stdin.readLineSync()!);

  if(d==0){
    print("Resultado de ($a-$c)²: ${pow((a-c), 2)}");
  }else if(d>0){
    print("Resultado de (($a-$b)³)/d: ${pow((a-b), 3)/d}");
  }
}