/*
Desarrolle un algoritmo, que dado como dato una temperatura en grados Fahrenheit, determine
el deporte que es apropiado practicar a esa temperatura, teniendo en cuenta la siguiente tabla:
*/
import 'dart:io';
void main(){
  print("Ingrese la temperatura en grados Fahrenheit: ");
  double temperatura = double.parse(stdin.readLineSync()!);

  String deporte = "";

  if(temperatura > 85){
    deporte = "Natación";
  }else if(temperatura > 70){
    deporte = "Tenis";
  }else if(temperatura > 32){
    deporte = "Golf";
  }else if(temperatura > 10){
    deporte = "Esquí";
  }else{
    deporte = "Marcha";
  }

  print("Deporte apropiado para la temperatura $temperatura°F: $deporte");
}