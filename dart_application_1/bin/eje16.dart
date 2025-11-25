/*
Una empresa X trabaja con láminas de hierro para fabricar una pieza. Se conoce que (a) la lámina
mide en promedio 4 metros de largo por 1.5 metros de ancho; (b) la pieza a fabricar consume 0.5
metros en total. Se requiere que calcule y muestre cuántas piezas se fabrican con una lámina y
cuánto será el desperdicio.
*/
void main(){
  double largoLam = 4.0;
  double anchoLam = 1.5;
  double consumoPieza = 0.5;

  double areaLam = largoLam * anchoLam;
  double piezasPorLam = areaLam / consumoPieza;
  double desperdicio = areaLam % consumoPieza;

  print("Con una lámina se pueden fabricar: ${piezasPorLam.floor()} piezas");
  print("El desperdicio será de: $desperdicio metros cuadrados");
}