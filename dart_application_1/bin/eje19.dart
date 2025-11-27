/*
En un hospital rural existen tres áreas: Ginecología, Pediatría y Traumatología. El presupuesto anual
del hospital se reparte conforme a la siguiente tabla:
Área Porcentaje del presupuesto
Ginecología 40%
Traumatología 30%
Pediatría 30%

Obtener la cantidad de dinero que recibirá cada área, para cualquier monto presupuestado.
*/
import 'dart:io';
void main(){
  print("Ingrese el presupuesto anual del hospital: ");
  double preA = double.parse(stdin.readLineSync()!);
  double preGine = preA * 0.4;
  double preTrau = preA * 0.3;
  double prePedi = preA * 0.3;

  print("Presupuesto para Ginecologia: \$${preGine}");
  print("Presupuesto para Traumatologia: \$${preTrau}");
  print("Presupuesto para Pediatria: \$${prePedi}");
}