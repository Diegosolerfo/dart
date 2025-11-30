/*
Escriba un programa que imprima todos los enteros positivos impares menores que 100
omitiéndose aquellos que sean divisibles por 7.
*/
void main(){
  for(int i=1; i<=100;i+=2){
    if(i%7==0){
      continue;
    }else{
      print(i);
    }
  }
}