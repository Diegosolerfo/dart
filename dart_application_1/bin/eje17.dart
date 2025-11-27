/*
Dados como datos el precio final pagado por un producto y su precio de venta al público (PVP), se
requiere que calcule y muestre el porcentaje de descuento que le ha sido aplicado.
*/
import 'dart:io';
void main(){
  print("Ingrese el precio final pagado por el producto:");
  double precioFinal = double.parse(stdin.readLineSync()!); // Precio pagado por el producto
  print("Ingrese el precio de venta al público (PVP):");
  double precioPVP = double.parse(stdin.readLineSync()!);   // Precio de venta al público

  double descuento = precioPVP - precioFinal;
  double porcentajeDescuento = (descuento / precioPVP) * 100;

  print("El porcentaje de descuento aplicado es: ${porcentajeDescuento}%");
}