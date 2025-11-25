/*
Un vendedor recibe un sueldo base, más un 10% extra por comisiones de sus ventas. El vendedor
desea saber cuánto dinero obtendrá por concepto de comisiones por las tres ventas que realizó en
el mes y el total que recibirá tomando en cuenta su sueldo base y sus comisiones.
*/
import 'dart:io';

void main() {
  print("Digite su salario base: ");
  double sueldo = double.parse(stdin.readLineSync()!);
  print("Digite el valor de la compra 1: ");
  int compra1 = int.parse(stdin.readLineSync()!);
  print("Digite el valor de la compra 2: ");
  int compra2 = int.parse(stdin.readLineSync()!);
  print("Digite el valor de la compra 3: ");
  int compra3 = int.parse(stdin.readLineSync()!);

  sueldo = (((compra1+compra2+compra3)*1.1)) + sueldo;
  print("Su sueldo final es: $sueldo");
}
