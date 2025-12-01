/*
Una persona debe realizar un muestreo con 100 personas para determinar el promedio de peso de
los niños, jóvenes, adultos y viejos que existen en su zona habitacional. Para ello, conforme
encuentra a las personas introduce los datos a su computadora, la cual mediante un programa las
clasifica y despliega los cuatro promedios que la persona requiere. Las categorías se trabajan de
acuerdo a la siguiente tabla:
*/

import 'dart:io';
void main(){
  print("PROMEDIO DE PESO SEGUN LA EDAD: \nniños(0-12)\njovenes(12-29)\nadultos(30-59) \nviejos(60<) \n");
  List<double> promedioPesos = [0,0,0,0];
  List<double> aux = [0,0,0,0];
  for(int i=1;i<=100; i++){
    print("Digite la edad de la persona: ");
    int edad = int.parse(stdin.readLineSync()!);
    print("Digite el peso de la persona ");
    double peso = double.parse(stdin.readLineSync()!);
    if(edad >= 0 && edad<13){
      promedioPesos[0]+=peso;
      aux[0]++; 
    }else if(edad >= 13 && edad<30){
      promedioPesos[1]+=peso;
      aux[1]++;
    }else if(edad >= 30 && edad<59){
      promedioPesos[2]+=peso;
      aux[2]++;
    }else if(edad >= 60){
      promedioPesos[3]+=peso;
      aux[3]++;
    }else{
      print("No conto esa persona algo escribiste mal solo numeros positivos porfavor :)");
    }
  } 
  List<String> cate = ['niños','jovenes','adultos','viejos'];
  for(int i=0; i<4; i++){
    print("Las personas ${cate[i]} tienen un promedio de ${(promedioPesos[i]/aux[i]).toStringAsFixed(5)}");
  }
}