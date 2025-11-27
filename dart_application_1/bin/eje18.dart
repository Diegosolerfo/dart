/*
Resuelva el problema que tienen en una gasolinera. Los surtidores de la misma registran lo que
surten en galones, pero el precio de la gasolina está fijado en litros. Se requiere que calcule y muestre
lo que hay que cobrarle a un cliente, considerando que: (a) cada galón tiene 3.785 litros; (b) el precio
del litro es de 100 Bolívares.
*/
import 'dart:io';
void main(){
  print("Ingrese la cantidad de galones surtidos: ");
  double galonesSurtidos = double.parse(stdin.readLineSync()!);

  double litrosSurtidos = galonesSurtidos * 3.785;
  double totalACobrar = litrosSurtidos * 100;

  print("Total a cobrar al cliente: Bs. $totalACobrar");
}