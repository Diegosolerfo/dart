/*
Calcule y muestre, a un alumno, cuál será su promedio general en las tres materias más difíciles que
cursa y cuál será el promedio que obtendrá en cada una de ellas. Estas materias se evalúan como se
muestra a continuación:
Matemática Examen 90% y 10% del promedio de tres tareas.
Física Examen 80% y 20% del promedio de dos tareas.
Química Examen 85% y 15% del promedio de tres tareas.
*/
import 'dart:io';
void main() {
  print("Digite la nota del examen de Matemáticas: ");
  double examenMatematica = double.parse(stdin.readLineSync()!);
  print("Digite la nota de la primera tarea de Matemáticas: ");
  double tarea1Matematica = double.parse(stdin.readLineSync()!);
  print("Digite la nota de la segunda tarea de Matemáticas: ");
  double tarea2Matematica = double.parse(stdin.readLineSync()!);
  print("Digite la nota de la tercera tarea de Matemáticas: ");
  double tarea3Matematica = double.parse(stdin.readLineSync()!);

  print("Digite la nota del examen de Física: ");
  double examenFisica = double.parse(stdin.readLineSync()!);
  print("Digite la nota de la primera tarea de Física: ");
  double tarea1Fisica = double.parse(stdin.readLineSync()!);
  print("Digite la nota de la segunda tarea de Física: ");
  double tarea2Fisica = double.parse(stdin.readLineSync()!);

  print("Digite la nota del examen de Química: ");
  double examenQuimica = double.parse(stdin.readLineSync()!);
  print("Digite la nota de la primera tarea de Química: ");
  double tarea1Quimica = double.parse(stdin.readLineSync()!);
  print("Digite la nota de la segunda tarea de Química: ");
  double tarea2Quimica = double.parse(stdin.readLineSync()!);
  print("Digite la nota de la tercera tarea de Química: ");
  double tarea3Quimica = double.parse(stdin.readLineSync()!);

  double promedioTareasMatematica = (tarea1Matematica + tarea2Matematica + tarea3Matematica) / 3;
  double promedioMatematica = (examenMatematica * 0.9) + (promedioTareasMatematica * 0.1);

  double promedioTareasFisica = (tarea1Fisica + tarea2Fisica) / 2;
  double promedioFisica = (examenFisica * 0.8) + (promedioTareasFisica * 0.2);

  double promedioTareasQuimica = (tarea1Quimica + tarea2Quimica + tarea3Quimica) / 3;
  double promedioQuimica = (examenQuimica * 0.85) + (promedioTareasQuimica * 0.15);
  
  double promedioGeneral = (promedioMatematica + promedioFisica + promedioQuimica) / 3;

  print("Promedio de Matemáticas: $promedioMatematica");
  print("Promedio de Física: $promedioFisica");
  print("Promedio de Química: $promedioQuimica");
  print("Promedio General: $promedioGeneral");
}