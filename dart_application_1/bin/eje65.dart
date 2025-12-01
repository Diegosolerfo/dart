/*
Calcular el sueldo neto de los trabajadores de una compañía sabiendo que este depende de los
siguientes datos:
• sueldo básico mensual 100000 si es obrero
• sueldo básico mensual 165500 si es administrativo
• sueldo básico mensual 250000 si es ejecutivo Las asignaciones y deducciones son:
• aporte por cada hijo hasta 5 hijos 10% del sueldo básico
• aporte por asistencia superior al 95% de los 30 días del mes 5% del sueldo básico.
• Deducción del 10% del sueldo básico para la caja de ahorros.
• Deducción para el seguro social 2% del sueldo básico
Por cada empleado debe salir un registro con el nombre y cédula, sueldo básico, aporte a la Caja de
Ahorros, seguro social y sueldo neto.
*/
import 'dart:io';
class Empleado{
  String nombre, cedula;
  int tipoEmpleado, cantHijos;
  double porcentajeAsistencia;

  Empleado(this.nombre,this.cedula,this.tipoEmpleado,this.cantHijos,this.porcentajeAsistencia);

  double calcularSueldoBasico(){
    double sueldo = 0.0;
    switch(tipoEmpleado){
      case 1:
        sueldo = 100000.0;
      break;
      case 2:
        sueldo = 165500.0;
      break;
      case 3:
        sueldo = 250000.0;
      break;
      default:
      break;
    }
    return sueldo;
  }

}
void main() {
  print("Digite la cantidad de empleados: ");
  int cantEmpleados = int.parse(stdin.readLineSync()!);

  List<Empleado> empleados = [];
  for(int i=0; i<cantEmpleados; i++){
    print("Digite el nombre: ");
    String nombre = stdin.readLineSync()!;
    print("Digite la cédula: ");
    String cedula = stdin.readLineSync()!;
    print("Digite el tipo de empleado 1-2-3: ");
    int tipoEmpleado = int.parse(stdin.readLineSync()!);
    print("Digite la cantidad de hijos: ");
    int cantHijos = int.parse(stdin.readLineSync()!);
    print("Digite el porcentaje de asistencia (%): ");
    double porcentajeAsistencia = double.parse(stdin.readLineSync()!);
    empleados.add(Empleado(nombre,cedula,tipoEmpleado,cantHijos,porcentajeAsistencia));
  }
  for(int i=0; i<cantEmpleados; i++){
    double sueldoBasico = empleados[i].calcularSueldoBasico();
    double aporteHijos = (empleados[i].cantHijos <= 5) ? sueldoBasico * 0.10 * empleados[i].cantHijos : sueldoBasico * 0.10 * 5;
    double aporteAsistencia = (empleados[i].porcentajeAsistencia > 95) ? sueldoBasico * 0.05 : 0.0;
    double deduccionCajaAhorros = sueldoBasico * 0.10;
    double deduccionSeguroSocial = sueldoBasico * 0.02;
    double sueldoNeto = sueldoBasico + aporteHijos + aporteAsistencia - deduccionCajaAhorros - deduccionSeguroSocial;

    print("Empleado: ${empleados[i].nombre}, Cédula: ${empleados[i].cedula}");
    print("Sueldo Basico: \$${sueldoBasico.toStringAsFixed(2)}");
    print("Aporte a la Caja de Ahorros: \$${deduccionCajaAhorros.toStringAsFixed(2)}");
    print("Seguro Social: \$${deduccionSeguroSocial.toStringAsFixed(2)}");
    print("Sueldo Neto: \$${sueldoNeto.toStringAsFixed(2)}\n");
  }
}