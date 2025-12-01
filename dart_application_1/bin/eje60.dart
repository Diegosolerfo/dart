/*
Una empresa está interesada en automatizar el proceso anual de cálculo de intereses de mora y de
descuentos en el cobro de las facturas de los clientes a crédito. Para ello la empresa utiliza los
siguientes criterios:
a. Si la factura se paga se paga 60 días después de haber realizado la compra se cobra un
interés de mora del 8% sobre el monto de la factura.
b. Si la factura se paga entre 31 y 59 días después de haber realizado la compra se cobra un
interés de mora del 6% sobre el monto de la factura.
c. Si la factura se paga antes de los 15 días de haber realizado la compra se hace un descuento
del 2% sobre el monto de la factura.

Realice un algoritmo que lea los datos de las facturas por pantalla e imprima para cada factura el
número, nombre del cliente, el monto a cancelar, el monto a pagar por interés de mora y monto
descontado por pronto pago.
Los datos de cada factura son: Número de factura (num-fac), nombre del cliente (num-cli), monto de
la factura (mon-fac), fecha de compra (fec-com) y fecha de pago (fec-pag).
*/
import 'dart:io';
void main() {
  print("Digite la cantidad de facturas: ");
  int cantFacturas = int.parse(stdin.readLineSync()!);

  for(int i=0; i<cantFacturas; i++){
    print("Digite el numero de factura: ");
    String numFac = stdin.readLineSync()!;
    print("Digite el nombre del cliente: ");
    String nombreCli = stdin.readLineSync()!;
    print("Digite el monto de la factura: ");
    double montoFac = double.parse(stdin.readLineSync()!);
    print("Digite la fecha de compra (dd/mm/aaaa): ");
    String fechaComStr = stdin.readLineSync()!;
    print("Digite la fecha de pago (dd/mm/aaaa): ");
    String fechaPagStr = stdin.readLineSync()!;

    DateTime fechaCom = DateTime.parse(fechaComStr.split('/').reversed.join('-'));
    DateTime fechaPag = DateTime.parse(fechaPagStr.split('/').reversed.join('-'));
    int diasDiferencia = fechaPag.difference(fechaCom).inDays;

    double interesMora = 0.0;
    double descuentoProntoPago = 0.0;

    if(diasDiferencia > 60){
      interesMora = montoFac * 0.08;
    } else if(diasDiferencia >= 31 && diasDiferencia <= 59){
      interesMora = montoFac * 0.06;
    } else if(diasDiferencia < 15){
      descuentoProntoPago = montoFac * 0.02;
    }

    double montoACancelar = montoFac + interesMora - descuentoProntoPago;

    print("Factura N°: $numFac");
    print("Cliente: $nombreCli");
    print("Monto a cancelar: \$${montoACancelar.toStringAsFixed(2)}");
    print("Interés de mora: \$${interesMora.toStringAsFixed(2)}");
    print("Descuento por pronto pago: \$${descuentoProntoPago.toStringAsFixed(2)}");
    print("-------------------------------");
  }
}