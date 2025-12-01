/*
Una empresa requiere realizar el cálculo de la nómina semanal de un conjunto M de empleados; para
ello dispone que los datos de entrada son: nombre, nacionalidad (V o E), edad, tipo de empleado
(1,2,3) y número de horas trabajadas. Con esta información se desea calcular e imprimir:
a. Sueldo básico o bruto. Considere para ello que el pago por hora depende del tipo de
empleado, según la siguiente distribución:
• Si el tipo empleado es 1 Bs. 5000
• Si el tipo empleado es 2 Bs. 10000
• Si el tipo empleado es 3 Bs. 15000
b. Seguro Social, que corresponde al 3% del Sueldo Básico, si éste último es mayor a 100000.
c. Total, de venezolanos por tipo de empleado.
d. Total, de Extranjeros cuya edad es impar.
e. Promedio de edad de todos los empleados.
f. Total, general a pagar en sueldos.
*/
import 'dart:io';
class Empleado{
  String nombre, nacionalidad, tipoEmpleado;
  int edad, horasTrabajadas;
  Empleado(this.nombre,this.nacionalidad,this.tipoEmpleado,this.edad,this.horasTrabajadas);

  int calcularSueldo(){
    int sueldo = 0;
    switch(tipoEmpleado){
      case '1':
        sueldo = horasTrabajadas * 5000;
      break;
      case '2':
        sueldo = horasTrabajadas * 10000;
      break;
      case '3':
        sueldo = horasTrabajadas * 15000;
      break;
      default:
      break;
    }
    return sueldo;
  }

  double calcularSeguro(int sueldo){
    double seguro=0.0;
    if((seguro = sueldo*0.03)>100000){
      seguro = sueldo*0.03;
    }
    return seguro;
  }

}
void main(){
  print("Digite la cantidad de empleados: ");
  int cantEmpleados = int.parse(stdin.readLineSync()!);

  List<Empleado> empleados = [];
  for(int i=0; i<cantEmpleados; i++){
    print("Digite el nombre: ");
    String nombre = stdin.readLineSync()!;
    print("Digite la nacionalidad (V/E): ");
    String nacionalidad = stdin.readLineSync()!;
    print("Digite el tipo de empleado (1/2/3): ");
    String tipoEmpleado = stdin.readLineSync()!;
    print("Digite la edad: ");
    int edad = int.parse(stdin.readLineSync()!);
    print("Digite la horas trabajadas: ");
    int horasTrabajadas = int.parse(stdin.readLineSync()!);
    empleados.add(Empleado(nombre, nacionalidad, tipoEmpleado, edad, horasTrabajadas));
  }
  print("---------RESULTADOS----------");
  List<int> sueldos = [];
  int sueldo = 0, ven=0, ext=0;
  for(int i=0; i<cantEmpleados; i++){
    sueldo = empleados[i].calcularSueldo();
    print("Para ${empleados[i].nombre} Sueldo del empleado \$${sueldo}");
    sueldos.add(sueldo);
    print("El seguro del empleado es de: \$${empleados[i].calcularSeguro(sueldo)}\n\n");
    if((totalEmpleNacio(empleados[i].nacionalidad, empleados[i].edad))=='V'){
        ven++;
    }else if((totalEmpleNacio(empleados[i].nacionalidad, empleados[i].edad))=='E'){
        ext++;
    }
  }
  print("--------RESUMEN EMPLEADOS----------");
  print("Tenemos $ven empleados venezolanos y $ext empleados extranjeros con la edad impar");
  List<int> edades = [];
  for(int i=0; i<cantEmpleados; i++){
    edades.add(empleados[i].edad);
  }
  print("El promedio de edad es de: ${promedioEdad(edades)} y el total de los sueldos es de: ${totalSueldos(sueldos)}");
}

double promedioEdad(List<int> x){
  double promedio=0,suma=0;
  for(int i=0;i<x.length;i++){
    suma+=x[i];
  } 
  promedio = suma/x.length;
  return promedio;
}
int totalSueldos(List<int> s){
  int total=0;
  for(int i=0; i<s.length;i++){
    total+=s[i];
  }
  return total;
}
String totalEmpleNacio(String nacionalidad, int edad){
    String result= 'N'; 
    switch(nacionalidad){
      case 'V':
        result = 'V';
      break;
      case 'E':
      if(((edad%2)!=0)){
        result = 'E';
      }
      break;
      default:
       result = 'N';
      break;
    }
    return result;
  }