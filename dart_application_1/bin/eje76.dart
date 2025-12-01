/*
Se desea obtener el promedio de g grupos que están en un mismo año escolar, siendo que cada
grupo puede tener n alumnos que cada alumno puede llevar m materias y que en todas las materias
se promedian tres calificaciones para obtener el promedio de la materia. Lo que se desea es mostrar
el promedio de los grupos, el promedio de cada grupo y el promedio de cada alumno.
*/
import 'dart:io';
void main() {
  print("Digite la cantidad de alumnos: ");
  int cantidadAlumnos = int.parse(stdin.readLineSync()!);
  for(int i=0; i<cantidadAlumnos; i++){
    print("Digite el nombre del alumno ${i+1}: ");
    String nombre = stdin.readLineSync()!;
    print("Digite la cantidad de materias de $nombre: ");
    int cantidadMaterias = int.parse(stdin.readLineSync()!);
    double sumaPromediosAlumno = 0.0;

    for(int j=0; j<cantidadMaterias; j++){
      print("Digite el nombre de la materia ${j+1} de $nombre: ");
      String materia = stdin.readLineSync()!;
      double sumaCalificaciones = 0.0;

      for(int k=0; k<3; k++){
        print("Digite la calificación ${k+1} de $materia: ");
        double calificacion = double.parse(stdin.readLineSync()!);
        sumaCalificaciones += calificacion;
      }

      double promedioMateria = sumaCalificaciones / 3;
      print("El promedio de $materia es: ${promedioMateria.toStringAsFixed(2)}");
      sumaPromediosAlumno += promedioMateria;
    }

    double promedioAlumno = sumaPromediosAlumno / cantidadMaterias;
    print("El promedio del alumno $nombre es: ${promedioAlumno.toStringAsFixed(2)}");

  }
}