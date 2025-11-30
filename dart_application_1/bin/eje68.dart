/*
Un número se dice que es perfecto si la suma de sus divisores excepto él mismo es igual a dicho
número. Ejemplo: 6 es un número perfecto ya que sus divisores: 1 + 2 + 3 suman seis. Diseñe un
algoritmo o programa que imprima los tres primeros números perfectos.
*/
void main() {
  int contadorPerfectos = 0;
  int numero = 1;

  print("Los tres primeros números perfectos son:");

  while (contadorPerfectos < 3) {
    int sumaDivisores = 0;

    for (int i = 1; i <= numero ~/ 2; i++) {
      if (numero % i == 0) {
        sumaDivisores += i;
      }
    }

    if (sumaDivisores == numero) {
      print(numero);
      contadorPerfectos++;
    }

    numero++;
  }
}