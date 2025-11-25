/*
Calcular el salario neto de un trabajador en función del número de horas trabajadas, el precio de la
hora y considerando un descuento fijo al sueldo base por concepto de impuestos del 20%.
*/
import 'dart:io';

void main() {
  print("Digite la cantidad de horas trabajadas: ");
  double n1 = double.parse(stdin.readLineSync()!);
  print("Digite el valor por hora: ");
  double n2 = double.parse(stdin.readLineSync()!);

  print("El salario ${n1*n2} al final con el descuento del 20% que es: ${(n1*n2)*0.2} de los impuestos es: ${(n1*n2)*0.8}");
}