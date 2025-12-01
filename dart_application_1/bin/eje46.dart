/*
Sea N y K dos enteros positivos, con K < N. Se desea escribir un programa que escriba el valor de
N,N-1,N-2,..., y así sucesivamente hasta llegar al valor de K.
*/
import 'dart:io';
void main(){
  print("Ingrese el valor de k: ");
  int K = int.parse(stdin.readLineSync()!);
  print("Ingrese el valor de n mayor que k: ");
  int N = int.parse(stdin.readLineSync()!);

  for(int i=0; i<=K; i++){
    print(N-i);
  }
}