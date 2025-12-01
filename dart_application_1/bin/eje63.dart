/*
63. En una encuesta de alumnos se tomaron los siguientes datos: edad, sexo, estado civil, y especialidad
que cursa. La empresa encuestadora, desea generar las siguientes estadísticas:

1
2

a. Promedio de edad de las mujeres.
b. Promedio de edad de los hombres.
c. Cantidad de hombres y de mujeres encuestados.
d. Porcentaje de personas para cada uno de los tipos de estado civil, respecto al total.
e. Cantidad de alumnos por especialidad y porcentaje que representan.
f. Porcentaje de mujeres adultas, tomando en cuenta que los adultos son los que tienen más
de 21 años.
g. Porcentaje de hombres jóvenes, tomando en cuenta que estos son los que tienen menos
de 21 años, pero más de 17.
h. Cantidad de hombres solteros y cantidad de mujeres solteras.
*/
import 'dart:io';
void main() {
  print("Digite la cantidad de alumnos encuestados: ");
  int cantAlumnos = int.parse(stdin.readLineSync()!);
  double sumMuj = 0;
  double sumHom = 0;
  int cantMuj = 0;
  int cantHom = 0;
  List<int> especialidad = [0,0,0,0];
  List<int> estadoCiviles = [0,0,0];
  int cantMujAdu = 0;
  int cantHomJov = 0;
  int cantHomSol = 0;
  int cantMujSol = 0;

  for(int i = 0; i < cantAlumnos; i++){
    print("Digite la edad del alumno ${i+1}: ");
    int edad = int.parse(stdin.readLineSync()!);
    print("Digite el sexo del alumno ${i+1} (m/f): ");
    String sexo = stdin.readLineSync()!;
    print("Digite el estado civil del alumno ${i+1} (c/s/u): ");
    String estadoCivil = stdin.readLineSync()!;
    print("Digite la especialidad que cursa el alumno ${i+1} 1-2-3-4: ");
    int espec = int.parse(stdin.readLineSync()!);
    if(sexo == 'f'){
      sumMuj += edad;
      cantMuj++;
      if(edad > 21){
        cantMujAdu++;
      }
      if(estadoCivil == 's'){
        cantMujSol++;
      }
    } else if(sexo == 'm'){
      sumHom += edad;
      cantHom++;
      if(edad > 17 && edad < 21){
        cantHomJov++;
      }
      if(estadoCivil == 's'){
        cantHomSol++;
      }
    }
    switch(estadoCivil){
      case 'c':
        estadoCiviles[0]++;
      break;
      case 's':
        estadoCiviles[1]++;
      break;
      case 'u':
        estadoCiviles[2]++;
      break;
      default:
      break;
    }
    switch(espec){
      case 1:
        especialidad[0]++;
      break;
      case 2:
        especialidad[1]++;
      break;
      case 3:
        especialidad[2]++;
      break;
      case 4:
        especialidad[3]++;
      break;
      default:
      break;
    }

  }
  print("Promedio de edad de las mujeres: ${sumMuj / cantMuj}");
  print("Promedio de edad de los hombres: ${sumHom / cantHom}");
  print("Cantidad de mujeres encuestadas: $cantMuj");
  print("Cantidad de hombres encuestados: $cantHom");
  print("Porcentaje de personas casadas: ${(estadoCiviles[0] / cantAlumnos) * 100}%");
  print("Porcentaje de personas solteras: ${(estadoCiviles[1] / cantAlumnos) * 100}%");
  print("Porcentaje de personas unidas: ${(estadoCiviles[2] / cantAlumnos) * 100}%");
  for(int i=0; i<especialidad.length; i++){
    print("Cantidad de alumnos en la especialidad ${i+1}: ${especialidad[i]}");
    print("Porcentaje de alumnos en la especialidad ${i+1}: ${(especialidad[i] / cantAlumnos) * 100}%");
  }
  print("Porcentaje de mujeres adultas: ${(cantMujAdu / cantMuj) * 100}%");
  print("Porcentaje de hombres jóvenes: ${(cantHomJov / cantHom) * 100}%");
  print("Cantidad de hombres solteros: $cantHomSol");
  print("Cantidad de mujeres solteras: $cantMujSol");

}