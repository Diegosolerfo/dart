/*
Dados como datos los valores enteros P y Q, determine si los mismos satisfacen la siguiente
expresión: P3 + Q4 – 2*P2 > 680. En caso afirmativo debe mostrar los valores de P y Q, de lo contrario
muestre un mensaje alusivo al hecho.
*/
import 'dart:io';
import 'dart:math';
void main(){
  print("Ingrese el valor de P: ");
  int P = int.parse(stdin.readLineSync()!);
  print("Ingrese el valor de Q: ");
  int Q = int.parse(stdin.readLineSync()!);

  int expresion = (pow(P, 3) + pow(Q, 4) - (2 * pow(P, 2))).toInt();

  if(expresion > 680){
    print("Los valores ingresados satisfacen la expresión: P = $P, Q = $Q resultado = $expresion");
  }else{
    print("Los valores ingresados no satisfacen la expresión.");
  }
}