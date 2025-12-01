/*
Tomando como base los resultados obtenidos en un laboratorio de análisis clínicos, un médico
determina si una persona tiene anemia o no, lo cual depende de su nivel de hemoglobina en la
sangre, de su edad y de su sexo. Si el nivel de hemoglobina que tiene una persona es menor que
el rango que le corresponde, se determina su resultado como positivo y en caso contrario como
negativo. La tabla en la que el médico se basa para obtener el resultado es la siguiente:
EDAD NIVEL DE HEMOGLOBINA
0 - 1 mes 13 - 26 g%
Mayor de 1 y menor o igual de 6 meses 10 - 18 g%
Mayor de 6 y menor o igual de 12 meses 11 - 15 g%
Mayor de 1 y menor o igual que 5 años 11.5 - 15 g%
Mayor de 5 y menor o igual que 10 años 12.6 – 15.5 g%
Mayor de 10 y menor o igual que 15 años 13 - 15.5 g%
Mujeres mayores de 15 años 12 - 16 g%
Hombres mayores de 15 años 14 - 18 g%
Desarrolle un algoritmo que indique, si una persona tiene Anemia o no.
*/
import 'dart:io';
void main(){
  print("Ingrese la edad en meses:");
  int edadMeses = int.parse(stdin.readLineSync()!);
  print("Ingrese el nivel de hemoglobina (g%):");
  double hemoglobina = double.parse(stdin.readLineSync()!);
  String sexo = "";
  if (edadMeses > 180) {
    print("Ingrese el sexo (M/F):");
    sexo = stdin.readLineSync()!.toUpperCase();
  }

  bool tieneAnemia = false;

  if (edadMeses <= 1) {
    tieneAnemia = hemoglobina < 13;
  } else if (edadMeses <= 6) {
    tieneAnemia = hemoglobina < 10;
  } else if (edadMeses <= 12) {
    tieneAnemia = hemoglobina < 11;
  } else if (edadMeses <= 60) {
    tieneAnemia = hemoglobina < 11.5;
  } else if (edadMeses <= 120) {
    tieneAnemia = hemoglobina < 12.6;
  } else if (edadMeses <= 180) {
    tieneAnemia = hemoglobina < 13;
  } else {
    if (sexo == "F") {
      tieneAnemia = hemoglobina < 12;
    } else if (sexo == "M") {
      tieneAnemia = hemoglobina < 14;
    } else {
      print("Sexo no válido.");
    }
  }

  if (tieneAnemia) {
    print("Resultado: Positivo para anemia.");
  } else {
    print("Resultado: Negativo para anemia.");
  }
}