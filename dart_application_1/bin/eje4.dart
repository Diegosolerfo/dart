/*
Una tienda ofrece un descuento del 15% sobre el total de la compra y un cliente desea saber cuánto
deberá pagar finalmente por su compra.
*/
import 'dart:io';

void main() {
  print("Digite el valor de su compra: ");
  int compra = int.parse(stdin.readLineSync()!);
  double finalCompra = compra * 0.85;
  print("El valor final de la compra es: $finalCompra");
}
