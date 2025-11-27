/*
en una tienda efectúan un descuento a los clientes dependiendo del monto de la compra. El
descuento se efectúa con base en el siguiente criterio:
a. Si el monto es inferior a $500, no hay descuento.
b. Si está comprendido entre $500 y $1000 inclusive, se hace un descuento del 5%
c. Si está comprendido entre $1000 y $7000 inclusive, se hace un descuento del 11%
d. Si está comprendido entre $7000 y $15000 inclusive, el descuento es del
18%
e. Si el monto es mayor a $15000, hay un 25% de descuento.
Calcule y muestre el nombre del cliente, el monto de la compra, monto a pagar y descuento recibido.
*/
import 'dart:io';
void main(){
  print("Ingrese el nombre del cliente: ");
  String nombreCliente = stdin.readLineSync()!;
  print("Ingrese el monto de la compra: ");
  double montoCompra = double.parse(stdin.readLineSync()!);

  double descuento = 0;
  if(montoCompra < 500){
    descuento = 0;
  }else if(montoCompra <= 1000){
    descuento = montoCompra * 0.05;
  }else if(montoCompra <= 7000){
    descuento = montoCompra * 0.11;
  }else if(montoCompra <= 15000){
    descuento = montoCompra * 0.18;
  }else{
    descuento = montoCompra * 0.25;
  }

  double montoPagar = montoCompra - descuento;

  print("Nombre del cliente: $nombreCliente");
  print("Monto de la compra: \$$montoCompra");
  print("Descuento recibido: \$$descuento");
  print("Monto a pagar: \$$montoPagar");
}