/*
Calcular y mostrar el monto total a pagar en un mes de luz eléctrica, teniendo como dato la lectura
anterior, la lectura actual y el costo por kilovatio.
*/
import 'dart:io';
void main(){
  print("Digite la lectura anterior del medidor: ");
  double lecturaAnterior = double.parse(stdin.readLineSync()!);
  print("Digite la lectura actual del medidor: ");
  double lecturaActual = double.parse(stdin.readLineSync()!);
  print("Digite el costo por kilovatio: ");
  double costoKilovatio = double.parse(stdin.readLineSync()!);

  double montoTotalMesActual = lecturaActual * costoKilovatio;
  double montoTotalMesAnterior = lecturaAnterior * costoKilovatio;

  print("El monto total a pagar en el mes es: $montoTotalMesActual y el mes anterior fue de $montoTotalMesAnterior");
}