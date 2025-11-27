/*
Un mayorista compra a un agricultor un lote de X naranjas a Bs. Y la docena. Después de vender
todas las naranjas a los detallistas, obtiene Bs. K. Calcular el porcentaje de ganancia obtenida en la
inversión. Pruebe su programa con los siguientes valores: X=48000, Y=6, K=42000 para obtener 75%
como resultado.
*/
import 'dart:io';
void main(){
  print("Digite el valor del lote: ");
  int valorLote = int.parse(stdin.readLineSync()!);
  print("Digite la cantidad de docenas: ");
  int cantidadDocenas = int.parse(stdin.readLineSync()!);
  print("Digite lo que gano: ");
  int ganancia = int.parse(stdin.readLineSync()!);

  double valorDocena = valorLote/12;
  double compraTotal = cantidadDocenas*valorDocena;
  double inversion = ganancia - compraTotal;
  double porcentaje = (inversion / compraTotal)*100;

  print("El valor de la inversion es: $inversion");
  print("Y el porcentaje de lo que gano es: $porcentaje%");
}