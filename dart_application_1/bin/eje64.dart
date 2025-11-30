/*
Dada la siguiente serie: 1 + 1⁄2 + 1⁄4 + 1/8 + 1/16 + 1/32 + ... Desarrolle un algoritmo o programa que
determine el número de términos necesarios para obtener la suma que más se aproxime al valor de
1.99. Se debe imprimir el número de términos y el valor de la suma cuando cumpla la condición
mencionada antes.
*/
void main() {
  double suma = 0.0;
  int terminos = 0;
  double terminoActual = 1.0;

  while (suma + terminoActual < 1.99) {
    suma += terminoActual;
    terminos++;
    terminoActual /= 2;
  }

  print("Número de terminos necesarios: $terminos");
  print("Valor de la suma aproximada: $suma");
}