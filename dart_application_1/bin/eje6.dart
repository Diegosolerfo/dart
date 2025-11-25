/*
Un maestro desea saber qué porcentaje de hombres y qué porcentaje de mujeres hay en un grupo
de estudiantes.
*/
import 'dart:io';

void main() {
  print("Digite la cantidad de mujeres: ");
  int n1 = int.parse(stdin.readLineSync()!);
  print("Digite la cantidad de hombres: ");
  int n2 = int.parse(stdin.readLineSync()!);

  int suma = n1 + n2;
  print("El porcentaje de hombres es: ${(n2 * 100) / suma}, y el porcentaje de las mujeres es: ${(n1*100)/suma}");
}
