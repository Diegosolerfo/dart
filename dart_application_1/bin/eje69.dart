/*
Dos números A y B son amigos, cuando la suma de los divisores menores que A es igual a B, al mismo
tiempo cuando la suma de los divisores menores que B es igual a A. Los dos menores números amigos
son 220 y 284, debido a que:
a. divisores de 220 1+2+4+5+10+11+20+22+44+45+110 = 284
b. divisores de 284 1+2+4+71+142 = 220
c. los siguientes pares de amigos son: 1184 y 1210; 2620 y 2924; 5020 y 5564, etc.
*/
import 'dart:io';
void main() {
  int sumaDivisoresA(int numero) {
    int suma = 0;
    for (int i = 1; i <= numero ~/ 2; i++) {
      if (numero % i == 0) {
        suma += i;
      }
    }
    return suma;
  }

  print("Ingrese el primer número (A): ");
  int a = int.parse(stdin.readLineSync()!);
  print("Ingrese el segundo número (B): ");
  int b = int.parse(stdin.readLineSync()!);

  int sumaA = sumaDivisoresA(a);
  int sumaB = sumaDivisoresA(b);

  if (sumaA == b && sumaB == a) {
    print("Los números $a y $b son amigos.");
  } else {
    print("Los números $a y $b no son amigos.");
  }
}