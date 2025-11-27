/*
Una empresa que comercializa cosméticos tiene organizados a sus vendedores en tres
departamentos y ha establecido un programa de incentivos para incrementar su productividad. El
gerente, al final del mes, pide el importe global de las ventas de los tres departamentos y aquellos
que excedan el 33% de las ventas totales se les paga una cantidad extra equivalente al 20% de su
salario mensual. Si todos los vendedores ganan lo mismo, determinar cuánto recibirán los
vendedores de los tres departamentos al finalizar el mes.
*/
import 'dart:io';
void main(){
  print("IMPORTE GLOBAL DE VENTAS");
  print("Digite las ventas totales del departamento 1:");
  double departamento1 = double.parse(stdin.readLineSync()!);
  print("Digite las ventas totales del departamento 2:");
  double departamento2 = double.parse(stdin.readLineSync()!);
  print("Digite las ventas totales del departamento 3:");
  double departamento3 = double.parse(stdin.readLineSync()!);
  print("Digite el salario de los empleados:");
  double salarioEmpleados = double.parse(stdin.readLineSync()!);

  double total = departamento3 + departamento2 + departamento1;
  double meta = total * 0.33;
  if(departamento1>meta){
    print("Departamento 1 salario= ${salarioEmpleados*1.2}");
  }
  if(departamento2>meta){
    print("Departamento 2 salario= ${salarioEmpleados*1.2}");
  }
  if(departamento3>meta){
    print("Departamento 3 salario= ${salarioEmpleados*1.2}");
  }
  print("El resto de departamentos tienen el salario normal meta era de $meta");
}