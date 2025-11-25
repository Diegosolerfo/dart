/*
Calcule el área de un triángulo en función de las longitudes de sus lados, utilizando la fórmula:
√p(p­a)(p­b)(p­c) donde p = (a+b+c) / 2
*/
import "dart:io";
import "dart:math";

void main() {
  print("Digite el valor del lado 1: ");
  double l1 = double.parse(stdin.readLineSync()!);
  print("Digite el valor del lado 2: ");
  double l2 = double.parse(stdin.readLineSync()!);
  print("Digite el valor del lado 3: ");
  double l3 = double.parse(stdin.readLineSync()!);
  double p = (l1 + l2 + l3) / 2;
  double formula = sqrt(p * (p - l1) * (p - l2) * (p - l3));
  print("El valor final es de: $formula");
}
