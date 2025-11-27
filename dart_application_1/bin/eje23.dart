/*
Suponga que a partir de una Tonelada de maíz una planta productora obtiene M kilogramos de
harina y N litros de aceite. La planta vende cada bulto de 24 paquetes de un kilogramo de harina en
Bs. B1 y cada caja de 15 envases de aceite en Bs. B2. Suponiendo que la planta vende todo lo que
produce, calcular el ingreso total por la venta de cada tonelada de maíz, sabiendo además que cada
kilogramo de harina y cada litro de aceite que restan del embalaje se venden al detal a los precios de
Bs. B3 y Bs. B4 respectivamente. Pruebe su algoritmo o programa con los sig. Valores: M=452,
N=197, B1=132, B2= 180, B3= 7,50 y B4= 14,50. Respuesta: 4895
*/
import 'dart:io';
void main(){
  print("Digite la cantidad de kilogramos de harina: ");
  double cantidadKilogramos = double.parse(stdin.readLineSync()!);
  print("Digite la cantidad de litros de aceite: ");
  double cantidadLitros = double.parse(stdin.readLineSync()!);
  print("Digite a cuanto vende el bulto de harina: ");
  double valorBulto = double.parse(stdin.readLineSync()!);
  print("Digite a cuanto vende la caja de aceite: ");
  double valorCaja = double.parse(stdin.readLineSync()!);
  print("Digite a cuanto vende el kilogramo de harina: ");
  double valorKilogramo = double.parse(stdin.readLineSync()!);
  print("Digite a cuanto vende el litro de aceite: ");
  double valorLitro = double.parse(stdin.readLineSync()!);

  int bultos = (cantidadKilogramos / 24).toInt();
  double sobranteKilogramos = cantidadKilogramos%24;
  int cajas = (cantidadLitros / 15).toInt();
  double sobranteLitros = cantidadLitros%15;

  double gananciaBultos = bultos*valorBulto;
  double gananciaCajas = cajas*valorCaja;
  double gananciaSobrasKilogramos = sobranteKilogramos * valorKilogramo;
  double gananciaSobrasLitros = sobranteLitros * valorLitro;

  double gananciaTotal = gananciaBultos + gananciaCajas + gananciaSobrasKilogramos + gananciaSobrasLitros;

  print("La ganancia total es de: $gananciaTotal Bs.");
}