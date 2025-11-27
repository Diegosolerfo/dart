/*
Dados tres datos enteros positivos, que representan las longitudes de los lados de un probable
triángulo, desarrolle un algoritmo que determine si los datos corresponden a un triángulo. En caso
de que sí correspondan, escriba si el triángulo es equilátero, isósceles o escaleno. Calcule además
su área. Considere que es triángulo si se cumple que la suma de los dos lados menores es mayor
que la del lado mayor. Tome en cuenta además que el área de un triángulo la calculamos como:
area = √S(S­A)(S­B)(S­C) donde S es la mitad de la suma de los lados A, B y C.
Recuerde:
Equilátero: todos los lados son iguales.
Isósceles: 2 lados iguales y 1 diferente.
Escaleno: Todos los lados diferentes.
*/
import 'dart:io';
import 'dart:math';
void main(){
  print('Ingrese la longitud del primer lado: ');
  int lado1 = int.parse(stdin.readLineSync()!);
  print('Ingrese la longitud del segundo lado: ');
  int lado2 = int.parse(stdin.readLineSync()!);
  print('Ingrese la longitud del tercer lado: ');
  int lado3 = int.parse(stdin.readLineSync()!);

  if((lado1+lado2)>=lado3 || (lado2+lado3)>=lado1 || (lado1+lado3)>=lado2){
    print('Los datos corresponden a un triángulo');
  } else {
    print('Los datos no corresponden a un triángulo');
  }

  if(lado1 != lado2 && lado1 != lado3 && lado2 != lado3){
    print('El triángulo es escaleno');
  } else if(lado1 == lado2 && lado1 == lado3){
    print('El triángulo es equilátero');
  } else {
    print('El triángulo es isósceles');
  }
  double S = (lado1 + lado2 + lado3) / 2;
  double area = (S * (S - lado1) * (S - lado2) * (S - lado3));
  area = sqrt(area);
  print('El área del triángulo es: $area');
}