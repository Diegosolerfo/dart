/*
Un comerciante de computadores ofrece P precio por compra al contado ó 12 cuotas de T Bolívares
cada una. Desarrolle un programa para calcular y mostrar cuál es el porcentaje que se cobra por el
recargo en el pago del computador por cuotas.
*/
import 'dart:io';
void main(){
  print("Digite el precio de la compra de contado: ");
  int p = int.parse(stdin.readLineSync()!);
  print("Digite el precio de las cuotas: ");
  int t = int.parse(stdin.readLineSync()!);
  
  double tt = t * 12;
  double r = tt-p;
  double rp = (r/p)*100;

  print("El recargo del pago por cuotas es: $rp% lo que es: $r");
}