/*
Desarrolle un algoritmo o programa que partiendo de la cantidad de habitantes que tiene cada uno
de los M municipios de los 5 principales Estados del País, calcule y muestre:
a. Estado con mayor población (nombre y cantidad),
b. Estado con menor población (nombre y cantidad),
c. Porcentaje que representan el total de los habitantes de los 5 Estados, respecto al total del
País y
d. Promedio de habitantes por Estado.
*/
import 'dart:io';
void main() {
  print("Digite la cantidad de habitantes del Estado 1: ");
  int estado1 = int.parse(stdin.readLineSync()!);
  print("Digite la cantidad de habitantes del Estado 2: ");
  int estado2 = int.parse(stdin.readLineSync()!);
  print("Digite la cantidad de habitantes del Estado 3: ");
  int estado3 = int.parse(stdin.readLineSync()!);
  print("Digite la cantidad de habitantes del Estado 4: ");
  int estado4 = int.parse(stdin.readLineSync()!);
  print("Digite la cantidad de habitantes del Estado 5: ");
  int estado5 = int.parse(stdin.readLineSync()!);

  List<int> estados = [estado1, estado2, estado3, estado4, estado5];
  List<String> nombresEstados = ["Estado 1", "Estado 2", "Estado 3", "Estado 4", "Estado 5"];

  int mayorPoblacion = estados[0];
  String nombreMayor = nombresEstados[0];
  int menorPoblacion = estados[0];
  String nombreMenor = nombresEstados[0];
  int totalPoblacion = 0;

  for(int i=0; i<estados.length; i++){
    totalPoblacion += estados[i];
    if(estados[i] > mayorPoblacion){
      mayorPoblacion = estados[i];
      nombreMayor = nombresEstados[i];
    }
    if(estados[i] < menorPoblacion){
      menorPoblacion = estados[i];
      nombreMenor = nombresEstados[i];
    }
  }

  double porcentajePais = (totalPoblacion / (totalPoblacion * 5)) * 100;
  double promedioPorEstado = totalPoblacion / 5;

  print("Estado con mayor población: $nombreMayor con $mayorPoblacion habitantes.");
  print("Estado con menor población: $nombreMenor con $menorPoblacion habitantes.");
  print("Porcentaje que representan los habitantes de los 5 Estados respecto al total del País: ${porcentajePais.toStringAsFixed(2)}%");
  print("Promedio de habitantes por Estado: ${promedioPorEstado.toStringAsFixed(2)}");
}