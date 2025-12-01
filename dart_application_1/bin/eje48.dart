/*
Escriba un algoritmo para producir una tabla de conversión de temperatura para convertir valores
en grados Fahrenheit a su equivalente en grados Celsius, grados Kelvin y grados Rankine.
Las ecuaciones de conversión son:
C = 5(F-32) / 9
R = F + 459.67
K = C + 273.15
Donde F = temperatura en grados Fahrenheit
C = temperatura en grados Celsius
R = temperatura en grados Rankine
K = temperatura en grados Kelvin
Haga que el programa imprima encabezados para cada columna en la tabla.
Datos muestra:
de 28 a 54 oF en intervalos de 1 oF
de 450 a 950 oF en intervalos de 50 oF
de –50 a 250 oF en intervalos de 10 oF
*/
void main(){
  print("Tabla de conversion de grados F a C, R, K");
  print("+-------------+-------------+--------------+--------------+");
  print("|     F       |      C      |      R       |       K      |");
  print("+-------------+-------------+--------------+--------------+");
  print("|                  de 28 a 54 grados f                    |");
  print("+-------------+-------------+--------------+--------------+");
  for(int i=28; i<=54; i++){
    double C = 5*(i-32) / 9;
    double R = i + 459.67;
    double K = C + 273.15;
    print("|    ${i.toStringAsFixed(0)}       |      ${C.toStringAsFixed(0)}     |      ${R.toStringAsFixed(0)}      |      ${K.toStringAsFixed(0)}      |");
    print("+-------------+-------------+--------------+--------------+");
  }
  print("|            de 450 a 950 grados f cada 50°f              |");
  print("+-------------+-------------+--------------+--------------+");
  for(int i=450; i<=950; i+=50){
    double C = 5*(i-32) / 9;
    double R = i + 459.67;
    double K = C + 273.15;
    print("|     ${i.toStringAsFixed(0)}     |     ${C.toStringAsFixed(0)}    |      ${R.toStringAsFixed(0)}      |     ${K.toStringAsFixed(0)}      |");
    print("+-------------+-------------+--------------+--------------+");
  }
  print("|            de -50 a 250 grados cada 10°f                |");
  print("+-------------+-------------+--------------+--------------+");
  for(int i=-50; i<=250; i+=10){
    double C = 5*(i-32) / 9;
    double R = i + 459.67;
    double K = C + 273.15;
    print("|    ${i.toStringAsFixed(0)}      |      ${C.toStringAsFixed(0)}    |      ${R.toStringAsFixed(0)}     |      ${K.toStringAsFixed(0)}     |");
    print("+-------------+-------------+--------------+--------------+");
  }
}