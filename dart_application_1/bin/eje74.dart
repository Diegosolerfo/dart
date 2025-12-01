/*
La bloquera “El Milagro” es una pequeña empresa dedicada a la fabricación de bloques de cemento
para construcción. Actualmente cuenta con una plantilla de obreros, cada uno de los cuales tiene un
número X de unidades a producir por semana. La secretaria registra, cada día, el número de bloques
que produjo cada obrero, para totalizar el sábado lo producido en la semana. De cada obrero se
conoce: nombre y cantidad de unidades producidas por día. Desarrolle un programa, que calcule y
muestre:
• Por obrero:
o Nombre
o Total, producido en la semana.
o Porcentaje que representa la producción semanal, respecto al límite
establecido.
• En general:
o Porcentaje de obreros que alcanzaron o superaron el número de unidades
producidas establecidas.
o Nombre del obrero que más produjo y cantidad producida.
o Promedio de producción de la bloquera en la semana.
*/
import 'dart:io';
class Obrero {
  String nombre;
  int produccionDiaria;
  Obrero(this.nombre, this.produccionDiaria);
}
void main() {
  List<Obrero> obreros = [];
  print("Ingrese la cantidad de obreros: ");
  int cantidadObreros = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < cantidadObreros; i++) {
    print("Ingrese el nombre del obrero ${i + 1}: ");
    String nombre = stdin.readLineSync()!;
    print("Ingrese la producción diaria del obrero ${i + 1}: ");
    int produccionDiaria = int.parse(stdin.readLineSync()!);
    obreros.add(Obrero(nombre, produccionDiaria));
  }
  int limiteProduccion = 1000;
  int obrerosCumplieron = 0;
  String obreroMayorProduccion = "";
  int mayorProduccion = 0;
  int produccionTotalBloquera = 0;
  for (var obrero in obreros) {
    int produccionSemanal = obrero.produccionDiaria * 6;
    double porcentajeProduccion = (produccionSemanal / limiteProduccion) * 100;
    produccionTotalBloquera += produccionSemanal;
    print("\nObrero: ${obrero.nombre}");
    print("Total producido en la semana: $produccionSemanal");
    print("Porcentaje respecto al límite establecido: ${porcentajeProduccion.toStringAsFixed(2)}%");

    if (produccionSemanal >= limiteProduccion) {
      obrerosCumplieron++;
    }
    if (produccionSemanal > mayorProduccion) {
      mayorProduccion = produccionSemanal;
      obreroMayorProduccion = obrero.nombre;
    }
  }
  double porcentajeObrerosCumplieron = (obrerosCumplieron / cantidadObreros) * 100;
  double promedioProduccionBloquera = produccionTotalBloquera / cantidadObreros;
  print("\nPorcentaje de obreros que alcanzaron o superaron el límite: ${porcentajeObrerosCumplieron.toStringAsFixed(2)}%");
  print("Obrero que más produjo: $obreroMayorProduccion con $mayorProduccion unidades.");
  print("Promedio de producción de la bloquera en la semana: ${promedioProduccionBloquera.toStringAsFixed(2)} unidades.");
}