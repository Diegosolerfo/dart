/*
Para cada una de las empresas del País se tienen como datos: actividad, localización y número de
trabajadores. La actividad y la localización, se codifican de la siguiente forma:

TABLA DE ACTIVIDADES
ACTIVIDAD             LOCALIZACION
1-AGRICOLA         1-NORTE
2-INDUSTRIAL      2-SUR
3-MINERA          3-ESTE
4-PESQUERA        4-OESTE
5-OTRA

Desarrolle un algoritmo / programa que calcule y muestre:
i. Porcentaje de empresas agrícolas del País.
ii. Porcentaje de empresas mineras del sur respecto al total de empresas que realizan
esa actividad.
iii. Promedio de trabajadores de las empresas de cada tipo de actividad. 
iv.  Localización con mayor número de empresas industriales.
*/
import 'dart:io';
void main() {
  List<String> actividad = [];
  List<String> localizacion = [];
  List<int> numTrabajadores = [];
  int contadorAgri = 0;
  int contadorMinSur = 0;
  int sumaTrabajadores = 0;
  List<int> empresasIndus = [0,0,0,0];
  int empresa = 0;
  print("Digite la cantidad de empresas: ");
  int cantEmpresas = int.parse(stdin.readLineSync()!);
  print("""Informacion a tener en cuenta: 
  \nActividades:\n1-AGRICOLA\n2-INDUSTRIAL\n3-MINERA\n4-PESQUERA\n5-OTRA\n
  Localizaciones:\n1-NORTE\n2-SUR\n3-ESTE\n4-OESTE""");
  for(int i=0; i<cantEmpresas; i++){
    print("Digite la actividad de la empresa ${i+1}: ");
    actividad.add(stdin.readLineSync()!);
    print("Digite la localización de la empresa ${i+1}: ");
    localizacion.add(stdin.readLineSync()!);
    print("Digite el número de trabajadores de la empresa ${i+1}: ");
    numTrabajadores.add(int.parse(stdin.readLineSync()!));
    if(actividad[i]=='1'){
      contadorAgri++;
    }
    if(actividad[i]=='3' && localizacion[i]=='2'){
      contadorMinSur++;
    }
    if(actividad[i]=='2'){
      switch(localizacion[i]){
        case '1':
          empresasIndus[0]++;
        break;
        case '2':
          empresasIndus[1]++;
        break;
        case '3':
          empresasIndus[2]++;
        break;
        case '4':
          empresasIndus[3]++;
        break;
        default:
        break;
      }
    }
    sumaTrabajadores += numTrabajadores[i];
  }
  double porcentajeAgri = (contadorAgri / cantEmpresas) * 100;
  double porcentajeMinSur = (contadorMinSur / cantEmpresas) * 100;
  double promedioTrabajadores = sumaTrabajadores / cantEmpresas;
  for(int i=0; i<empresasIndus.length; i++){
    if(empresa > empresasIndus[i]){
      empresa = empresasIndus[i];
    }
  }
  print("Porcentaje de empresas agrícolas del País: $porcentajeAgri%");
  print("Porcentaje de empresas mineras del sur: $porcentajeMinSur%");
  print("Promedio de trabajadores de las empresas: $promedioTrabajadores");
  print("Localización con mayor número de empresas industriales: $empresa");
}