/*
Desarrolle un programa que calcule y muestre el monto que debe pagar un suscriptor por concepto
de consumo de luz eléctrica y servicio de aseo urbano. Dicho monto se calcula multiplicando la
diferencia de la lectura anterior y la lectura actual por el costo de cada Kilovatio hora, según la
siguiente escala:
0 - 100 2.622,00 Bs.
101 - 300 79,78 Bs. / Kwh
301 – 500 89,52 Bs. /Kwh
501 – en adelante 97,95 Bs. / Khw
*/
import 'dart:io';
void main(){
  print("Ingrese la lectura anterior del medidor: ");
  int lecturaAnterior = int.parse(stdin.readLineSync()!);
  print("Ingrese la lectura actual del medidor: ");
  int lecturaActual = int.parse(stdin.readLineSync()!);
  print("Ingrese de del kilovatio por hora: ");
  int costo = int.parse(stdin.readLineSync()!);

  int consumo = (lecturaActual - lecturaAnterior)*costo;

  if(0 <= consumo && consumo <= 100){
    double monto = consumo * 2622.00;
    print("El monto a pagar es: Bs. $monto");
  }else if(101 <= consumo && consumo <= 300){
    double monto = consumo * 79.78;
    print("El monto a pagar es: Bs. $monto");
  }else if(301 <= consumo && consumo <= 500){
    double monto = consumo * 89.52;
    print("El monto a pagar es: Bs. $monto");
  }else{
    double monto = consumo * 97.95;
    print("El monto a pagar es: Bs. $monto");
  }
}