/*
La UNICEF desea obtener información estadística sobre los orfanatorios ubicados dentro de la
República y sobre los niños huérfanos internados en esos orfanatorios. Por cada niño se conoce:
sexo, edad, nombre del orfanatorio y estado de la República al que pertenece el Orfanatorio. Escriba
un Programa para calcular y mostrar lo siguiente:
a. Porcentaje de huérfanos del Estado Táchira y del Distrito Capital respecto al total del País.
b. Número de huérfanos en cada grupo. Los grupos se definen según la Edad:
Grupo 1: menores de 1 año
Grupo 2: edad comprendida entre 1 y 3 años
Grupo 3: edad comprendida entre 4 y 6 años
Grupo 4: mayores de 6 años
c. Cantidad de niños y niñas y porcentaje que representa cada uno.
*/
import 'dart:io';
void main() {
  print("Digite la cantidad de huerfanos: ");
  int cantHuerfanos = int.parse(stdin.readLineSync()!);
  int contadorTachira = 0;
  int contadorDistritoCapital = 0;
  int grupo1 = 0;
  int grupo2 = 0;
  int grupo3 = 0;
  int grupo4 = 0;
  int contadorNinos = 0;
  int contadorNinas = 0;

  for(int i=0; i<cantHuerfanos; i++){
    print("Digite el sexo del huerfano ${i+1} (m/f): ");
    String sexo = stdin.readLineSync()!;
    print("Digite la edad del huerfano ${i+1}: ");
    int edad = int.parse(stdin.readLineSync()!);
    print("Digite el estado del orfanatorio del huerfano ${i+1}: ");
    String estado = stdin.readLineSync()!;

    if(estado == 'tachira'){
      contadorTachira++;
    } else if(estado == 'distrito capital'){
      contadorDistritoCapital++;
    }

    if(edad < 1){
      grupo1++;
    } else if(edad >= 1 && edad <= 3){
      grupo2++;
    } else if(edad >= 4 && edad <= 6){
      grupo3++;
    } else if(edad > 6){
      grupo4++;
    }

    if(sexo.toLowerCase() == 'm'){
      contadorNinos++;
    } else if(sexo.toLowerCase() == 'f'){
      contadorNinas++;
    }
  }

  double porcentajeTachira = (contadorTachira / cantHuerfanos) * 100;
  double porcentajeDistritoCapital = (contadorDistritoCapital / cantHuerfanos) * 100;
  double porcentajeNinos = (contadorNinos / cantHuerfanos) * 100;
  double porcentajeNinas = (contadorNinas / cantHuerfanos) * 100;

  print("Porcentaje de huerfanos en Tachira: $porcentajeTachira%");
  print("Porcentaje de huerfanos en Distrito Capital: $porcentajeDistritoCapital%");
  print("Numero de huerfanos en el Grupo 1 menores de 1 año: $grupo1");
  print("Numero de huerfanos en el Grupo 2 de 1 a 3 años: $grupo2");
  print("Numero de huerfanos en el Grupo 3 de 4 a 6 años: $grupo3");
  print("Numero de huerfanos en el Grupo 4 mayores de 6 años: $grupo4");
  print("Cantidad de niños: $contadorNinos, Porcentaje: $porcentajeNinos%");
  print("Cantidad de niñas: $contadorNinas, Porcentaje: $porcentajeNinas%");  
}