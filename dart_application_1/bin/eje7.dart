/*
Dada una cantidad en metros, se requiere que la convierta a pies y pulgadas, considerando lo
siguiente: 1 metro = 39.27 pulgadas; 1 pie = 12 pulgadas.
*/
import 'dart:io';

void main() {
  print("Digite la cantidad de metros que va a convertir a pies y pulgadas: ");
  double n1 = double.parse(stdin.readLineSync()!);
  double pulgadas = n1 * 39.27;
  double pies = pulgadas / 12;
  print("$n1 en pulgadas es: $pulgadas y en pies es:$pies");
}
