/*
Un alumno desea saber cuál será su calificación final en la materia de computación. Dicha calificación se compone de los siguientes porcentajes: 55% del promedio de sus tres calificaciones parciales, 30% de la calificación del examen final y 15% de la calificación de un trabajo final.
*/
import 'dart:io';

void main() {
  print("Digite las notas de calificaciones parciales");
  print("Digite su nota 1: ");
  double n1 = double.parse(stdin.readLineSync()!);
  print("Digite su nota 2: ");
  double n2 = double.parse(stdin.readLineSync()!);
  print("Digite su nota 3: ");
  double n3 = double.parse(stdin.readLineSync()!);
  print("Digite su nota de examen final: ");
  double ef = double.parse(stdin.readLineSync()!);
  print("Digite su nota del trabajo final: ");
  double tf = double.parse(stdin.readLineSync()!);

  double definitiva = (((n1 + n2 + n3) / 3) * 0.55) + (ef * 0.3) + (tf * 0.15);
  print(definitiva);
}
