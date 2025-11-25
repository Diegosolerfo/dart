/*
Se conoce de un trabajador su nombre, el número de horas normales trabajadas, el pago de una hora
normal y el número de horas extras trabajadas. Además, que, cada hora extra se paga 25% más del
valor de una hora normal. Si se deducen al trabajador sobre el sueldo base 5% del paro forzoso, 2%
de política habitacional y 7% para caja de ahorro. Si se le asignan 25000 Bolívares por actualización
académica, 17300 Bolívares por cada hijo y una prima por hogar de 18000 Bolívares. Calcule y
muestre las asignaciones, las deducciones y el sueldo neto del trabajador.
*/
import 'dart:io';
void main() {
  print("Digite su nombre: ");
  String nombre = stdin.readLineSync()!;
  print("Digite el numero de horas normales trabajadas: ");
  double horasNormales = double.parse(stdin.readLineSync()!);
  print("Digite el pago por hora normal: ");
  double pagoHoraNormal = double.parse(stdin.readLineSync()!);
  print("Digite el numero de horas extras trabajadas: ");
  double horasExtras = double.parse(stdin.readLineSync()!);
  print("Digite el numero de hijos: ");
  int numeroHijos = int.parse(stdin.readLineSync()!);

  double sueldoBase = (horasNormales * pagoHoraNormal) + (horasExtras * pagoHoraNormal * 1.25);
  double deducciones = sueldoBase * 0.14; // 5% + 2% + 7%
  double asignaciones = 25000 + (17300 * numeroHijos) + 18000;
  double sueldoNeto = sueldoBase - deducciones + asignaciones;

  print("Trabajador: $nombre");
  print("Sueldo Base: $sueldoBase");
  print("Deducciones: $deducciones");
  print("Asignaciones: $asignaciones");
  print("Sueldo Neto: $sueldoNeto");
}