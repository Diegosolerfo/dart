/*
Cinco miembros de un club contra la obesidad desean saber cuánto han bajado o subido de peso
desde la última vez que se reunieron. Para esto se debe realizar un ritual de pesaje en donde cada
uno se pesa en diez básculas distintas para así tener el promedio más exacto de su peso. Si existe
diferencia positiva entre este promedio de peso y el peso de la última vez que se reunieron, significa
que subieron de peso. Pero si la diferencia es negativa, significa que bajaron. Lo que el problema
requiere es que por cada persona se imprima un mensaje que diga SUBIO ó BAJO y la cantidad de
kilos que subió o bajó de peso.
*/
import 'dart:io';
void main() {
  print("Digite la cantidad de personas: ");
  int cantidadPersonas = int.parse(stdin.readLineSync()!);

  for(int i=0; i<cantidadPersonas; i++){
    print("Digite el nombre de la persona ${i+1}: ");
    String nombre = stdin.readLineSync()!;
    print("Digite el peso anterior de $nombre (kg): ");
    double pesoAnterior = double.parse(stdin.readLineSync()!);

    double sumaPesos = 0.0;
    for(int j=0; j<10; j++){
      print("Digite el peso en la báscula ${j+1} para $nombre (kg): ");
      double pesoActual = double.parse(stdin.readLineSync()!);
      sumaPesos += pesoActual;
    }

    double promedioPesoActual = sumaPesos / 10;
    double diferencia = promedioPesoActual - pesoAnterior;

    if(diferencia > 0){
      print("$nombre SUBIO ${diferencia.toStringAsFixed(2)} kg.");
    } else if(diferencia < 0){
      print("$nombre BAJO ${(-diferencia).toStringAsFixed(2)} kg.");
    } else {
      print("$nombre NO CAMBIÓ de peso.");
    }

  }
}