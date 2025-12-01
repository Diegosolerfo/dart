/*
Un investigador acaba de aplicar 64 cuestionarios de 23 preguntas cada uno; donde cada pregunta
permite escoger entre 1 y 5, a un grupo de personas que constituyen su población. Se desea que
elabore un Programa, para ayudar al Investigador a procesar toda la información recopilada, para
ello tome en cuenta lo siguiente: necesita calcular el promedio de cada instrumento o escala para lo
cual es necesaria la fórmula: PT/NT, donde PT representa el total de puntos de cada cuestionario que
resulta de sumar los valores que el encuestado, encerró entre un círculo y NT es el total de preguntas
del instrumento. Estos valores se deben acumular, para al final calcular y mostrar lo siguiente:
a. La media o promedio de todos los cuestionarios (promedio general).
b. El promedio más alto obtenido y número de instrumento a que corresponde.
c. El promedio más bajo obtenido y número de instrumento a que corresponde.
d. Porcentaje de cuestionarios que obtuvieron un promedio inferior a 3, respecto a los que tuvieron un
promedio superior a 4.
e. Porcentaje de cuestionarios que obtuvieron un promedio entre 4.5 y 5 respecto al total procesado.
*/
import 'dart:io';

void main() {
  List<List<int>> cuestionarios = [];
  List<double> resultados = [];
  double promGeneral = 0;
  double maximo = -1;
  double minimo = 999;
  double porcentajeS = 0; 
  double porcentajeI = 0; 
  double porcentajeE = 0; 
  for (int i = 0; i < 64; i++) {
    print("\nCuestionario ${i + 1}: ");
    cuestionarios.add([]);
    int promIndividual = 0;
    for (int j = 0; j < 23; j++) {
      stdout.write("Puntuación pregunta ${j + 1}: ");
      int valor = int.parse(stdin.readLineSync()!);

      cuestionarios[i].add(valor);
      promIndividual += valor;
    }

    double promedio = promIndividual / 23;
    resultados.add(promedio);

    promGeneral += promedio;

    if (promedio > maximo) maximo = promedio;
    if (promedio < minimo) minimo = promedio;

    if (promedio < 3) porcentajeI++;
    if (promedio > 4) porcentajeS++;
    if (promedio >= 4.5 && promedio <= 5) porcentajeE++;
  }

  double porcentaje1 = (porcentajeI / porcentajeS) * 100;
  double porcentaje2 = (porcentajeE / 64) * 100;

  promGeneral /= 64;

  print("\nRESULTADOS -------------------------");
  print("Promedio general: $promGeneral");
  print("Promedio más alto: $maximo");
  print("Promedio más bajo: $minimo");
  print("Porcentaje (<3 respecto >4): $porcentaje1%");
  print("Porcentaje entre [4.5 - 5]: $porcentaje2%");
}