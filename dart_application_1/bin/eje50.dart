/*
Desarrolle un algoritmo o programa que permita calcular y mostrar la suma de todos los números
pares comprendidos entre 97 y 1003. Respuesta: 249150
*/
void main(){
  int suma = 0;
  for(int i=98; i<=1003; i+=2){
    suma += i;
  }
  print(suma);
}