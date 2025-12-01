/*
Una estación climática proporciona un par de temperaturas diarias (máx, min), el rango normal de
temperatura es entre 14 y 30 ° C. La pareja fin de temperaturas es 0,0. Se pide determinar:
g. El número de días cuyas temperaturas se han proporcionado.
h. Las medias máxima y mínima.
i. Número de errores que ingresaron (temperaturas fuera de rango).
j. Porcentaje que representan los errores ingresados.
*/
import 'dart:io';
void main() {
  int contadorDias = 0;
  double sumaMax = 0.0;
  double sumaMin = 0.0;
  int contadorErrores = 0;

  while (true) {
    print("Ingrese la temperatura máxima del día: ");
    double tempMax = double.parse(stdin.readLineSync()!);
    print("Ingrese la temperatura mínima del día: ");
    double tempMin = double.parse(stdin.readLineSync()!);

    if (tempMax == 0 && tempMin == 0) {
      break;
    }

    contadorDias++;

    if (tempMax < 14 || tempMax > 30) {
      contadorErrores++;
    } else {
      sumaMax += tempMax;
    }

    if (tempMin < 14 || tempMin > 30) {
      contadorErrores++;
    } else {
      sumaMin += tempMin;
    }
  }

  double mediaMax = contadorDias - contadorErrores > 0 ? sumaMax / (contadorDias - contadorErrores) : 0;
  double mediaMin = contadorDias - contadorErrores > 0 ? sumaMin / (contadorDias - contadorErrores) : 0;
  double porcentajeErrores = contadorDias > 0 ? (contadorErrores / (contadorDias * 2)) * 100 : 0;

  print("Número de días registrados: $contadorDias");
  print("Media de temperaturas máximas: $mediaMax");
  print("Media de temperaturas mínimas: $mediaMin");
  print("Número de errores ingresados: $contadorErrores");
  print("Porcentaje de errores ingresados: $porcentajeErrores%");
}