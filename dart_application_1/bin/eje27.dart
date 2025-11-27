/*
Un científico desea que un algoritmo le ayude en su trabajo analizándole tres valores que se
suministran, para determinar si los dos primeros son las medidas de una figura conocida. Para ello,
calcule el área de cada una de las figuras que se mencionan a continuación y compárela con el
tercer valor suministrado; si hay coincidencia, imprima un mensaje que indique de qué figura se
trata. Las figuras a analizar son:
• Triángulo: b*h Valor1 y Valor2 son base y altura
2
• Círculo: pi * r2 Valor1 y Valor2 son radio y pi
• Rectángulo: b * h Valor1 y Valor2 son base y altura.
*/
import 'dart:io';
void main(){
  print("Ingrese el valor 1:");
  double valor1 = double.parse(stdin.readLineSync()!);
  print("Ingrese el valor 2:");
  double valor2 = double.parse(stdin.readLineSync()!);
  print("Ingrese el valor 3:");
  double valor3 = double.parse(stdin.readLineSync()!);

  double areaT = (valor1*valor2)/2;
  double areaC = valor1*(valor2*valor2);
  double areaR = valor1*valor2;

  if(valor3 == areaT){
    print("La figura es triangulo :)");
  }else if(valor3 == areaC){
    print("La figura es circulo :)");
  }else if(valor3 == areaR){
    print("La figura es rectangulo :)");
  }else{
    print("Oh no, no es ninguna de las figuras ;( mejor suerte a la proxima usuario :)");
  }
}