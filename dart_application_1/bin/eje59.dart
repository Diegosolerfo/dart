/*
Desarrolle un programa que capture las notas del primer parcial de Matemática, Programación
e inglés de un grupo indeterminado de alumnos y calcule e imprima:
a. Nota menor de Programación.
b. Porcentaje de alumnos que no presentaron el examen de inglés, respecto a los que sí
presentaron.
c. Número de alumnos que aprobaron todas las materias.
d. Promedio general en Programación.
e. Porcentaje de alumnos que reprobaron Matemática, respecto al total de alumnos que
presentaron el examen de matemática.
*/
import 'dart:io';
void main() {
  print("Digite el numero de alumnos:");
  int n = int.parse(stdin.readLineSync()!);
  int notaMenorProgramacion = 0;
  int contadorIngles = 0;
  int contadorAprobados = 0;
  double sumaProgramacion = 0.0;
  int contadorReprobados = 0;
  print("Digite las notas de los alumnos si no presentaroon algun examen escriba 0: ");
  for(int i=0; i<n; i++){
    print("Digite la nota de matematicas del alumno ${i+1}:");
    double matematicas = double.parse(stdin.readLineSync()!);
    print("Digite la nota de programacion del alumno ${i+1}:");
    double programacion = double.parse(stdin.readLineSync()!);
    print("Digite la nota de ingles del alumno ${i+1}:");
    double ingles = double.parse(stdin.readLineSync()!);
    if(notaMenorProgramacion > programacion){
      notaMenorProgramacion = programacion.toInt();
    }
    if(ingles == 0){
      contadorIngles++;
    }
    if(matematicas >= 3.2 && programacion >= 3.2 && ingles >= 3.2){
      contadorAprobados++;
    }
    sumaProgramacion += programacion;
    if(matematicas < 3.2){
      contadorReprobados++;
    }
  }
  //A
  print("La nota menor de programacion es: $notaMenorProgramacion");
  //B
  double porcentajeIngles = (contadorIngles / n) * 100;
  print("El porcentaje de alumnos que no presentaron el examen de ingles es: $porcentajeIngles%");
  //C
  print("El numero de alumnos que aprobaron todas las materias es: $contadorAprobados");
  //D
  double promedioProgramacion = sumaProgramacion / n;
  print("El promedio general en programacion es: $promedioProgramacion");
  //E
  double porcentajeReprobados = (contadorReprobados / n) * 100;
  print("El porcentaje de alumnos que reprobaron matematicas es: $porcentajeReprobados%");
}