import 'dart:io';

void main() {
  /*
  Suponga que un individuo decide invertir su capital en un banco y desea saber cuánto dinero ganará
  después de un mes si el banco paga a razón de 2% mensual.
*/
  print("Digite su capital: ");
  int capital = int.parse(stdin.readLineSync()!);
  print("El capital que obtendra despues de 1 mes es: ${capital * 1.02}");
}
