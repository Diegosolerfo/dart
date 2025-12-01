/*
Calcular el término doceavo y la suma de los doce primeros términos de la sucesión: 6, 11, 16, 21.
Respuesta: a12=61, suma=402.
*/
void main(){
  int suma = 0, siguiente = 1;
  int termino = 0;
  for(int i=1; i<=12; i++){
    siguiente += 5;
    suma+=siguiente;
    if(i==12)termino = siguiente;
  }
  print("suma = $suma \n termino 12°vo = $termino");
}