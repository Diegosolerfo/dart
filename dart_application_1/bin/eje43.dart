/*
El dueño de una empresa desea planificar las decisiones financieras que tomará en el siguiente
año. La manera de planificarlas depende de lo siguiente: Si actualmente su capital se encuentra
con saldo negativo, pedirá un préstamo bancario para que su nuevo saldo sea de $10000. si su
capital tiene actualmente un saldo positivo pedirá un préstamo bancario para tener un nuevo saldo
de $20000, pero si su capital tiene actualmente un saldo superior a los $20000 no pedirá ningún
préstamo.
Posteriormente repartirá su presupuesto de la siguiente manera:
$5000 para equipo de cómputo
$2000 para mobiliario y del resto la mitad será para la compra de insumos y la otra para
otorgar incentivos al personal.
Desplegar qué cantidades se destinarán para la compra de insumos e incentivos al personal y, en caso
de que fuera necesario, a cuánto ascendería la cantidad que se pediría al banco.
*/
import 'dart:io';
void main(){
  print("Ingrese el capital actual de la empresa:");
  double capitalActual = double.parse(stdin.readLineSync()!);
  double nuevoSaldo = capitalActual;
  double prestamo = 0.0;

  if (capitalActual < 0) {
    prestamo = 10000 - capitalActual;
    nuevoSaldo = 10000;
  } else if (capitalActual <= 20000) {
    prestamo = 20000 - capitalActual;
    nuevoSaldo = 20000;
  }

  double equipoComputo = 5000;
  double mobiliario = 2000;
  double restante = nuevoSaldo - equipoComputo - mobiliario;
  double insumos = restante / 2;
  double incentivos = restante / 2;

  print("Cantidad a pedir al banco: \$$prestamo");
  print("Cantidad destinada para insumos: \$$insumos");
  print("Cantidad destinada para incentivos al personal: \$$incentivos");
}