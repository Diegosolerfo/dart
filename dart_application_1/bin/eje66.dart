/*
Una aerolínea está interesada en diseñar un software que le permita calcular y acumular los montos
a pagar por equipaje para cada uno de sus vuelos. El algoritmo debe procesar todos los vuelos del
día con sus respectivos pasajeros y maletas, las cuales están identificadas por un código. Las tarifas
por kilogramos se muestran en la siguiente tabla:
PESOS TARIFA POR Kgs.
1 a 3 Kgs. 0
3.01 a 6 Kgs 600
6.01 a 9 Kgs 1200
9.01 a 12 Kgs 1500
12.01 a 15 Kgs 2000
más de 15 Kgs. 2500

Se quiere un algoritmo en seudocódigo o diagrama estructurado que permita:

i. Imprimir por pasajero el número de vuelo, el código de abordo, el nombre, el total
de kilogramos del equipaje con su respectivo monto a pagar.
ii. Imprimir por pasajero el número de vuelo, el nombre y el código de la maleta con
mayor peso.
iii. Imprimir para cada vuelo el número de vuelo, el código de abordo, el nombre y el
peso total para el pasajero con mayor y menor peso total del equipaje.
iv. Imprimir para cada vuelo el número de vuelo y el monto total cancelado por
equipaje.
v. Imprimir el porcentaje de pasajeros que no pagaron por equipaje.

NOTA: No se podrán utilizar vectores ni matrices.
*/
import 'dart:io';
class Maleta {
  String codigo;
  double peso;
  Maleta(this.codigo, this.peso);
}
class Pasajero {
  String codigoAbordo;
  String nombre;
  Maleta maleta;
  Pasajero(this.codigoAbordo, this.nombre, this.maleta);
}
void main() {
  print("Digite la cantidad de pasajeros: ");
  int cantPasajeros = int.parse(stdin.readLineSync()!);
  for(int i=0; i<cantPasajeros; i++){
    print("Digite el número de vuelo del pasajero ${i+1}: ");
    String numeroVuelo = stdin.readLineSync()!;
    print("Digite el código de abordo del pasajero ${i+1}: ");
    String codigoAbordo = stdin.readLineSync()!;
    print("Digite el nombre del pasajero ${i+1}: ");
    String nombre = stdin.readLineSync()!;
    print("Digite el código de la maleta del pasajero ${i+1}: ");
    String codigoMaleta = stdin.readLineSync()!;
    print("Digite el peso de la maleta del pasajero ${i+1} (en Kgs): ");
    double pesoMaleta = double.parse(stdin.readLineSync()!);
    Maleta maleta = Maleta(codigoMaleta, pesoMaleta);
    Pasajero pasajero = Pasajero(codigoAbordo, nombre, maleta);
    double montoAPagar = 0.0;
    if(pesoMaleta > 3 && pesoMaleta <= 6){
      montoAPagar = 600;
    } else if(pesoMaleta > 6 && pesoMaleta <= 9){
      montoAPagar = 1200;
    } else if(pesoMaleta > 9 && pesoMaleta <= 12){
      montoAPagar = 1500;
    } else if(pesoMaleta > 12 && pesoMaleta <= 15){
      montoAPagar = 2000;
    } else if(pesoMaleta > 15){
      montoAPagar = 2500;
    }
    print("Pasajero: ${pasajero.nombre}");
  print("Número de vuelo: $numeroVuelo");
  print("Código de abordo: ${pasajero.codigoAbordo}");
  print("Peso total del equipaje: ${pasajero.maleta.peso} Kgs");
  print("Monto a pagar por equipaje: \$${montoAPagar}");
  }
}