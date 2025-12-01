/*
Confeccionar un algoritmo que permita resolver una ecuación de segundo grado, de la forma:
AX2+BX+C = 0, sabiendo que el discriminante (D) se calcula con la fórmula: D= Bˆ2­4*A*C. El valor
obtenido se evalúa y se aplica la fórmula correspondiente, según muestra la siguiente tabla:
*/
import 'dart:io';
import 'dart:math';
void main(){
  print("Ingrese el valor de A: ");
  double A = double.parse(stdin.readLineSync()!);
  print("Ingrese el valor de B: ");
  double B = double.parse(stdin.readLineSync()!);
  print("Ingrese el valor de C: ");
  double C = double.parse(stdin.readLineSync()!);

  double D = pow(B,2)-4*A*C;
  double X = 0;
  double formula = 0;
  if(D == 0){
    X = -B/(2/A);
    X = X*X;
    formula = A*pow(X,2)+(B*X)+C;
    print("El resultado es: $formula");
  }else if(D>0){
    X = (-B+sqrt(D)/2*A);
    formula = A*pow(X,2)+(B*X)+C;
    print("El resultado es: $formula");
  }else{
    print("No tiene solucion en los reales :( ");
  }
  
}