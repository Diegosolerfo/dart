/*
La Oficina Central de Estadística e Informática (OCEI) desea conocer cierta información sobre la
situación actual del país en cuanto a los niveles actuales de desempleo, analfabetismo y del potencial
de profesionales existentes en Venezuela. Los Estados son identificados por un código entero
positivo de dos (02) dígitos significativos. Las ciudades mediante un código de cuatro (04) dígitos
significativos, de los cuales los dos últimos dígitos corresponden al Estado al cual pertenecen. Los
municipios se identifican con un código de cuatro (06) dígitos significativos, de los cuales los primeros
dígitos corresponden al código de Estado y los dos siguientes dígitos a los dos primeros dígitos del
código de la ciudad en la cual están ubicados. Los datos fueron tomados de personas mayores de 18
años y los mismos son los siguientes: edad; nivel de educación (N: ninguna, B: básica, S: secundaria,
P: profesional); situación actual (D: desempleado, E: empleado). Se requiere que desarrolle un
programa que cumpla con lo siguiente:
• Determinar e imprimir por municipio el código y la cantidad de personas con las siguientes
características: desempleado, sin ningún nivel de educación y mayores de 25 años.
Calcular e imprimir el código de las ciudades cuyas personas establecidas en la parte anterior sean
más del 50%.
• Calcular e imprimir el código del Estado con mayor porcentaje de profesionales desempleados.
*/
import 'dart:io';

class Persona {
  int edad;
  String educacion;
  String situacion; 
  String estado;    
  String ciudad;    
  String municipio; 

  Persona(this.edad, this.educacion, this.situacion,
      this.estado, this.ciudad, this.municipio);
}

void main() {
  List<Persona> personas = [];

  while (true) {
    print("1. Registrar persona");
    print("2. Reporte por municipio");
    print("3. Ciudades con más del 50% del grupo crítico");
    print("4. Estado con mayor % de profesionales desempleados");
    print("5. Salir");

    int opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        registrarPersona(personas);
        break;

      case 2:
        reportePorMunicipio(personas);
        break;

      case 3:
        ciudades50(personas);
        break;

      case 4:
        estadoMayorPorcentajeProfesionalesDesempleados(personas);
        break;

      case 5:
        print("Programa finalizado.");
        return;

      default:
        print("Opción inválida.");
    }
  }
}

void registrarPersona(List<Persona> personas) {
  print("Edad:");
  int edad = int.parse(stdin.readLineSync()!);

  print("Nivel de educación (N/B/S/P):");
  String edu = stdin.readLineSync()!;

  print("Situación (D: desempleado, E: empleado):");
  String sit = stdin.readLineSync()!;

  print("Código del Estado (2 dígitos):");
  String estado = stdin.readLineSync()!;

  print("Código de la Ciudad (4 dígitos):");
  String ciudad = stdin.readLineSync()!;

  print("Código del Municipio (6 dígitos):");
  String muni = stdin.readLineSync()!;

  personas.add(Persona(edad, edu, sit, estado, ciudad, muni));

  print("Persona registrada correctamente.");
}

void reportePorMunicipio(List<Persona> personas) {
  print("\n--- REPORTE POR MUNICIPIO ---");

  Map<String, int> contador = {};

  for (var p in personas) {
    bool condicion = p.situacion == "D" &&
                     p.educacion == "N" &&
                     p.edad > 25;

    if (condicion) {
      contador[p.municipio] = (contador[p.municipio] ?? 0) + 1;
    }
  }

  if (contador.isEmpty) {
    print("No hay personas que cumplan la condición.");
    return;
  }

  contador.forEach((municipio, cantidad) {
    print("Municipio $municipio → $cantidad personas");
  });
}

void ciudades50(List<Persona> personas) {
  print("\n--- CIUDADES CON MÁS DE 50% DEL GRUPO CRÍTICO ---");

  Map<String, int> totalCiudad = {};
  Map<String, int> criticosCiudad = {};

  for (var p in personas) {

    totalCiudad[p.ciudad] = (totalCiudad[p.ciudad] ?? 0) + 1;

    bool condicion = p.situacion == "D" &&
                     p.educacion == "N" &&
                     p.edad > 25;

    if (condicion) {
      criticosCiudad[p.ciudad] = (criticosCiudad[p.ciudad] ?? 0) + 1;
    }
  }

  for (var ciudad in totalCiudad.keys) {
    int total = totalCiudad[ciudad]!;
    int crit = criticosCiudad[ciudad] ?? 0;

    if (total > 0 && (crit / total) > 0.5) {
      print("Ciudad $ciudad -> ${((crit / total) * 100).toStringAsFixed(2)}%");
    }
  }
}

void estadoMayorPorcentajeProfesionalesDesempleados(List<Persona> personas) {
  print("\n--- ESTADO CON MAYOR % DE PROFESIONALES DESEMPLEADOS ---");

  Map<String, int> totalProfesionales = {};
  Map<String, int> desempleadosProf = {};

  for (var p in personas) {
    if (p.educacion == "P") {
      totalProfesionales[p.estado] = (totalProfesionales[p.estado] ?? 0) + 1;

      if (p.situacion == "D") {
        desempleadosProf[p.estado] = (desempleadosProf[p.estado] ?? 0) + 1;
      }
    }
  }

  if (totalProfesionales.isEmpty) {
    print("No hay profesionales registrados.");
    return;
  }

  String estadoMax = "";
  double maxPorcentaje = -1;

  for (var estado in totalProfesionales.keys) {
    int total = totalProfesionales[estado]!;
    int desem = desempleadosProf[estado] ?? 0;

    double porcentaje = (desem / total) * 100;

    if (porcentaje > maxPorcentaje) {
      maxPorcentaje = porcentaje;
      estadoMax = estado;
    }
  }

  print("Estado con mayor % de profesionales desempleados: $estadoMax");
  print("Porcentaje: ${maxPorcentaje.toStringAsFixed(2)}%");
}
