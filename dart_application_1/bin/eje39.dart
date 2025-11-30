/*
Una persona se encuentra en la disyuntiva de comprar un automóvil o un terreno, los cuales
cuestan exactamente la misma cantidad de dinero. Sabe que mientras el automóvil se devalúa,
con el terreno sucede lo contrario. Esta persona comprará el automóvil si al cabo de tres años la
devaluación de éste no es mayor que la mitad del incremento del valor del terreno. Ayúdele a esta
persona a determinar si debe o no comprar el automóvil.
*/
import 'dart:io';

void main(){
  print("Ingrese el valor actual del automovil: ");
  double auto = double.parse(stdin.readLineSync()!);
  print("Ingrese el valor actual del terreno: ");
  double terreno = double.parse(stdin.readLineSync()!);
  print("Ingrese por cuanto se devalúa el automovil: ");
  double devaluacion = double.parse(stdin.readLineSync()!);
  print("Ingrese por cuanto se incrementa el valor del terreno: ");
  double incremento = double.parse(stdin.readLineSync()!);

  double autodevaulado = auto - (auto * devaluacion / 100) * 3;
  double terrenoIncrementado = terreno + (terreno * incremento / 100) * 3;

  if (autodevaulado <= (terrenoIncrementado / 2)) {
    print("Debe comprar el automovil.");
  } else {
    print("No debe comprar el automovil.");
  }
  print("Valor del automovil después de 3 años: Bs. $autodevaulado");
  print("Valor del terreno después de 3 años: Bs. $terrenoIncrementado");
}