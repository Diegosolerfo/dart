/*
72.Conociendo la masa y distancia de dos cuerpos se puede determinar la Fuerza de atracción que se
ejerce entre ambos. Se desea determinar las fuerzas de atracción ejercida entre la tierra y diversos
satélites ubicados a distintas alturas. Para lo cual la NASA le ha solicitado a usted construir un
programa que responda a los siguientes requerimientos:
a) Cuál es la mayor y menor fuerza de atracción ejercida por los satélites en estudio
b) La fuerza de atracción promedio ejercida por los satélites en estudio
c) La mayor masa de todos los satélites estudiados
d) La masa promedio de los satélites
e) La menor y mayor altura de los satélites
La fórmula para determinar la Fuerza de atracción es:

F = G m M
r
2

donde:
m: masa satélite;
M: Masa tierra (5,97 * 10 24 Kg);
r: distancia de los cuerpos;
G: Constante Gravitatoria (6,67259 * 10-11 N*m2
)
Kg2

Considere la siguiente muestra para realizar la prueba del Programa:
Satélite  País      Masa    Altura
Kg. Mts
Canada 1  Canadá    8.300   31.200.000
Alfa 1    Chile     5.500   36.000.000
Boby 4    EE.UU.    12.000  33.450.000
Che 3     Argentina 3.350   34.200.000
*/
import 'dart:io';
void main() {
  const double G = 6.67259e-11;
  const double M = 5.97e24;

  print("Digite la cantidad de satelites a estudiar: ");
  int cantSatelites = int.parse(stdin.readLineSync()!);

  double mayorFuerza = double.negativeInfinity;
  double menorFuerza = double.infinity;
  double sumaFuerzas = 0.0;
  double mayorMasa = double.negativeInfinity;
  double sumaMasas = 0.0;
  double menorAltura = double.infinity;
  double mayorAltura = double.negativeInfinity;

  for(int i=0; i<cantSatelites; i++){
    print("Digite la masa del satelite ${i+1} (Kg): ");
    double masa = double.parse(stdin.readLineSync()!);
    print("Digite la altura del satelite ${i+1} (mts): ");
    double altura = double.parse(stdin.readLineSync()!);

    double r = altura + 6371000; // Radio de la Tierra en metros
    double fuerza = (G * masa * M) / (r * r);

    if(fuerza > mayorFuerza){
      mayorFuerza = fuerza;
    }
    if(fuerza < menorFuerza){
      menorFuerza = fuerza;
    }
    sumaFuerzas += fuerza;

    if(masa > mayorMasa){
      mayorMasa = masa;
    }
    sumaMasas += masa;

    if(altura < menorAltura){
      menorAltura = altura;
    }
    if(altura > mayorAltura){
      mayorAltura = altura;
    }
  }

  double promedioFuerzas = sumaFuerzas / cantSatelites;
  double promedioMasas = sumaMasas / cantSatelites;

  print("Mayor fuerza de atracción: $mayorFuerza N");
  print("Menor fuerza de atracción: $menorFuerza N");
  print("Fuerza de atracción promedio: $promedioFuerzas N");
  print("Mayor masa de los satélites: $mayorMasa Kg");
  print("Masa promedio de los satélites: $promedioMasas Kg");
  print("Menor altura de los satélites: $menorAltura mts");
  print("Mayor altura de los satélites: $mayorAltura mts");
}