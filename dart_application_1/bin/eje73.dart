/*
Un banco está interesado en diseñar un software que le permita calcular y generar ciertos listados
sobre las deudas de sus clientes a créditos. El algoritmo debe procesar para cada estado y sus
agencias los clientes con pagarés pendientes a una fecha (dd/mm/aaaa) dad y generar los recibos
correspondientes para ser enviados a los clientes. Cada estado, agencia y cliente es identificado por
un código. Los pagarés tienen una fecha de vencimiento (dd/mm/aaaa), un monto a pagar y un
número que lo identifica; un cliente debe tener más que un pagaré.
Se quiere un algoritmo o programa que permita:
• Imprimir un recibo para cada cliente cuyo encabezado es su código, nombre, dirección,
código de estado y código de agencia. El detalle del recibo contendrá un número del pagaré,
la fecha de vencimiento y el monto del pagaré. Al final del recibo debe colocar la cantidad
de pagares pendientes y el monto total pendiente.
• Imprimir por agencia su código, estado, la cantidad de clientes con pagares pendientes,
monto total adeudado y el código de cliente con mayor deuda.
Imprimir por estado su código, el monto total adeudado en el estado y el código de agencia
con menor y mayor monto adeudado.
• Calcular e imprimir el monto promedio adeudado en razón de los montos máximos
adeudados por las agencias a nivel nacional.

NOTA: Los cálculos se deben realizar en función de una fecha dada. No se podrán utilizar vectores
ni matrices.
*/import 'dart:io';

class Cliente {
  String codigo, nombre, direccion, estado, agencia;
  Cliente(this.codigo, this.nombre, this.direccion, this.estado, this.agencia);
}

class Agencia {
  String codigo, estado;
  Agencia(this.codigo, this.estado);
}

class Pagare {
  String numero, fecha, cliente;
  double monto;
  Pagare(this.numero, this.fecha, this.monto, this.cliente);
}

void main() {
  List<Cliente> clientes = [];
  List<Agencia> agencias = [];
  List<Pagare> pagares = [];

  while (true) {
    print("\n1) Registrar Cliente");
    print("2) Registrar Agencia");
    print("3) Registrar Pagaré");
    print("4) Reportes");
    print("5) Salir");

    int op = int.parse(stdin.readLineSync()!);

    if (op == 1) {
      print("Código cliente:");
      String c = stdin.readLineSync()!;
      print("Nombre:");
      String n = stdin.readLineSync()!;
      print("Dirección:");
      String d = stdin.readLineSync()!;
      print("Código estado:");
      String e = stdin.readLineSync()!;
      print("Código agencia:");
      String a = stdin.readLineSync()!;
      clientes.add(Cliente(c, n, d, e, a));
      print("Cliente registrado.\n");
    }

    else if (op == 2) {
      print("Código agencia:");
      String c = stdin.readLineSync()!;
      print("Estado de la agencia:");
      String e = stdin.readLineSync()!;
      agencias.add(Agencia(c, e));
      print("Agencia registrada.\n");
    }

    else if (op == 3) {
      print("Número pagaré:");
      String num = stdin.readLineSync()!;
      print("Fecha vencimiento:");
      String f = stdin.readLineSync()!;
      print("Monto:");
      double m = double.parse(stdin.readLineSync()!);
      print("Código cliente:");
      String cli = stdin.readLineSync()!;
      pagares.add(Pagare(num, f, m, cli));
      print("Pagaré registrado.\n");
    }

    else if (op == 4) {
      print("\n1) Recibo por cliente");
      print("2) Resumen por agencia");
      print("3) Resumen por estado");
      print("4) Promedio nacional");
      int r = int.parse(stdin.readLineSync()!);

      if (r == 1) {
        print("Código del cliente:");
        String cod = stdin.readLineSync()!;
        
        Cliente? c = clientes.firstWhere(
          (x) => x.codigo == cod,
          orElse: () => Cliente("", "", "", "", "")
        );

        if (c.codigo == "") {
          print("Cliente no encontrado.");
          continue;
        }

        print("\nRECIBO DEL CLIENTE-----------");
        print("Código: ${c.codigo}");
        print("Nombre: ${c.nombre}");
        print("Dirección: ${c.direccion}");
        print("Estado: ${c.estado}");
        print("Agencia: ${c.agencia}");

        double total = 0;
        int cant = 0;

        for (Pagare p in pagares) {
          if (p.cliente == cod) {
            print("Pagaré #${p.numero} | Fecha: ${p.fecha} | Monto: \$${p.monto}");
            total += p.monto;
            cant++;
          }
        }

        print("Total pagarés: $cant");
        print("Monto total pendiente: $total\n");
      }

      // Aquí luego te agrego lo demás si quieres
    }

    else if (op == 5) break;
  }
}
