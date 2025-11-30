/*
100 personas presentaron una prueba constituida por 3 preguntas. Se requiere desarrollar un
algoritmo o programa que permita determinar la cantidad de personas que respondieron:
a. correctamente las tres preguntas.
b. Correctamente solamente la primera y la segunda pregunta.
c. Correctamente solamente la primera y la tercera pregunta.
d. Correctamente solamente la segunda y la tercera pregunta.
e. Correctamente la primera pregunta por lo menos.
f. Correctamente la segunda pregunta por lo menos.
g. Correctamente la tercera pregunta por lo menos.
h. Además, cuántos no respondieron correctamente ninguna pregunta.
*/
import 'dart:io';
void main(){
  String rta = "";
  print("Segun los resultados de la persona digite: ");
  List<int> vector = [0,0,0,0,0,0,0,0];
  for(int i=1; i<=100;i++){
    print("""a. correctamente las tres preguntas.
b. Correctamente solamente la primera y la segunda pregunta.
c. Correctamente solamente la primera y la tercera pregunta.
d. Correctamente solamente la segunda y la tercera pregunta.
e. Correctamente la primera pregunta por lo menos.
f. Correctamente la segunda pregunta por lo menos.
g. Correctamente la tercera pregunta por lo menos.
h. Además, cuántos no respondieron correctamente ninguna pregunta.\n
Persona $i:
""");
    rta = stdin.readLineSync()!;
    switch(rta){
      case 'a':
        vector[0]++;
      break;
      case 'b':
        vector[1]++;
      break;
      case 'c':
        vector[2]++;
      break;
      case 'd':
        vector[3]++;
      break;
      case 'e':
        vector[4]++;
      break;
      case 'f':
        vector[5]++;
      break;
      case 'g':
        vector[6]++;
      break;
      case 'h':
        vector[7]++;
      break;
      default:
      print("No se conto porque ingreso algo erroneo solo letras profavor");
      break;
    }
  }
  List<String> letrasImprimir = ['a','b','c','d','e','f','g','h'];
  for(int i=1; i!=8; i++){
    print("${vector[i]} -> ${letrasImprimir[i]}");
  }
}