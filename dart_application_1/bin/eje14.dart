/*
El siguiente sistema de ecuaciones lineales:
aX + bY = c
dX + eY = f

se resuelve con las fórmulas:
ce - bf af - cd
X = --------- Y = --------- calcule y muestre el valor de X e Y.
ae – bd ae – bd
*/
import 'dart:io';
void main(){
  print("Digite el valor de a,b,c,d,e,f: ");
  print("A:");
  int a = int.parse(stdin.readLineSync()!);
  print("B:");
  int b = int.parse(stdin.readLineSync()!);
  print("C:");
  int c = int.parse(stdin.readLineSync()!);
  print("D:");
  int d = int.parse(stdin.readLineSync()!);
  print("E:");
  int e = int.parse(stdin.readLineSync()!);
  print("F:");
  int f = int.parse(stdin.readLineSync()!);

  double X = ((c*e)-(b*f))/((a*e)-(b*d)); 
  double Y = ((a*f)-(c*d))/((a*e)-(b*d));

  print("El valor de X es: $X \n y el valor de Y es: $Y"); 
}