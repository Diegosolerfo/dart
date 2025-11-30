/*
Diseñe un algoritmo o programa que permita calcular la multiplicación de dos números, utilizando el
método de la multiplicación Rusa, el cual consiste en multiplicar por dos el multiplicando y dividir
entre dos el multiplicador hasta que el multiplicador tome el valor 1. Durante este proceso, se deben
sumar todos los multiplicandos correspondientes a multiplicadores impares y este resultado es el de
la multiplicación. Ejemplo:
a. 25 x 7 = 175 (multiplicador = 25, multiplicando = 7)
b. 25 7
c. 12 14
d. 6 28 suma= 7 + 56 + 112 = 175
e. 3 56
f. 1 112
*/
import 'dart:io';
void main() {
  print("Ingrese el multiplicador (número entero positivo): ");
  int multiplicador = int.parse(stdin.readLineSync()!);
  print("Ingrese el multiplicando (número entero positivo): ");
  int multiplicando = int.parse(stdin.readLineSync()!);

  if (multiplicador <= 0 || multiplicando <= 0) {
    print("Ambos números deben ser enteros positivos.");
    return;
  }

  int resultado = 0;
  print("\nProceso de Multiplicación Rusa:");
  print("Multiplicador\tMultiplicando");
  while (multiplicador >= 1) {
    print("$multiplicador\t\t$multiplicando");
    if (multiplicador % 2 != 0) {
      resultado += multiplicando;
    }
    multiplicador ~/= 2; // División entera
    multiplicando *= 2;
  }

  print("\nEl resultado de la multiplicación es: $resultado");
}