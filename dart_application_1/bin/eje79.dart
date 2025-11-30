/*
Una pequeña Librería de la Ciudad desea controlar los datos de los diferentes autores cuyos libros
están a la venta. Cada autor ha escrito diversos libros, pudiendo estos ser clasificados de acuerdo al
género: ciencia ficción, romance, acción, terror, novela, autoayuda y académico. Para cada texto se
conoce: código, género y número de páginas. Escriba un programa, que permita calcular y mostrar:
• Por autor:
 Apellido
 Total, de páginas escritas o Código del libro con mayor número de páginas y
cantidad de páginas.

• En General:
 Porcentaje de libros de ciencia ficción, respecto al total de libros.
 Cantidad de libros de ciencia ficción y romance que hay en existencia.
 Apellido del autor con mayor cantidad de libros escritos y cantidad de libros
escritos.
*/
import 'dart:io';

class Autor {
  String apellido;
  Autor(this.apellido);
}

class Libro {
  String codigo;
  String genero;
  int paginas;
  String apellidoAutor;

  Libro(this.codigo, this.genero, this.paginas, this.apellidoAutor);
}

void main() {
  List<Autor> autores = [];
  List<Libro> libros = [];

  while (true) {
    print("\n--- LIBRERÍA ---");
    print("1. Registrar autor");
    print("2. Registrar libro");
    print("3. Reporte por autor");
    print("4. Reporte general");
    print("5. Salir");

    int opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        print("Apellido del autor:");
        String apellido = stdin.readLineSync()!;
        autores.add(Autor(apellido));
        print("Autor registrado.");
        break;

      case 2:
        print("Código del libro:");
        String codigo = stdin.readLineSync()!;
        print("Género del libro:");
        print("(ciencia ficción, romance, acción, terror, novela, autoayuda, académico)");
        String genero = stdin.readLineSync()!;
        print("Número de páginas:");
        int paginas = int.parse(stdin.readLineSync()!);
        print("Apellido del autor:");
        String ape = stdin.readLineSync()!;

        libros.add(Libro(codigo, genero, paginas, ape));
        print("Libro registrado.");
        break;

      case 3:
        print("Apellido del autor a consultar:");
        String apeBuscado = stdin.readLineSync()!;

        List<Libro> librosAutor =
            libros.where((l) => l.apellidoAutor == apeBuscado).toList();

        if (librosAutor.isEmpty) {
          print("Ese autor no tiene libros registrados.");
          break;
        }

        int totalPaginas =
            librosAutor.fold(0, (suma, lib) => suma + lib.paginas);

        Libro mayor = librosAutor.first;
        for (var lib in librosAutor) {
          if (lib.paginas > mayor.paginas) {
            mayor = lib;
          }
        }

        print("\n--- REPORTE POR AUTOR ---");
        print("Autor: $apeBuscado");
        print("Total de páginas escritas: $totalPaginas");
        print("Libro con más páginas: Código ${mayor.codigo}, ${mayor.paginas} páginas");

        break;

      case 4:
        if (libros.isEmpty) {
          print("No hay libros registrados.");
          break;
        }

        print("\n--- REPORTE GENERAL ---");

        int totalLibros = libros.length;

        int cantCF = libros.where((l) => l.genero == "ciencia ficción").length;
        int cantRomance = libros.where((l) => l.genero == "romance").length;

        double porcentajeCF = (cantCF / totalLibros) * 100;

        Map<String, int> contadorPorAutor = {};
        for (var lib in libros) {
          contadorPorAutor[lib.apellidoAutor] =
              (contadorPorAutor[lib.apellidoAutor] ?? 0) + 1;
        }

        String autorMax = "";
        int cantMax = 0;

        contadorPorAutor.forEach((apellido, cantidad) {
          if (cantidad > cantMax) {
            cantMax = cantidad;
            autorMax = apellido;
          }
        });

        print("Porcentaje de libros de ciencia ficción: ${porcentajeCF.toStringAsFixed(2)}%");
        print("Cantidad de libros de ciencia ficción: $cantCF");
        print("Cantidad de libros de romance: $cantRomance");
        print("Autor con más libros: $autorMax ($cantMax libros)");

        break;

      case 5:
        print("Programa finalizado.");
        return;

      default:
        print("Opción inválida.");
    }
  }
}
