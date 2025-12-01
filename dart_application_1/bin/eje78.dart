/*
Una empresa comercializadora de productos cerámicos con sucursales y puntos de venta a nivel
nacional está interesada en desarrollar un software que le permita controlar sus ventas. Cada
sucursal posee un monto de venta esperado el cual debe cubrir y tiene asignados varios puntos de
venta, los cuales debe controlar. La sucursal es identificada con un código entero positivo de dos
dígitos y los puntos de venta por un código entero positivo de cuatro dígitos, en el cual los dos
primeros dígitos corresponden al código de la sucursal a la cual reporta. Los productos
comercializados por la empresa son identificados por un código que va del 1 al 3, el PVP de cada uno
es dado como constante y todos los puntos de venta, venden los 3 tipos de productos. El 10% de las
ventas brutas de cada punto de venta es repartido entre los vendedores de la misma en forma
equitativa como comisión de venta. Se requiere que desarrolle un programa que responda a lo
siguiente:
• Imprimir por punto de venta: su código, las unidades vendidas, el monto neto de la venta,
el monto pagado por comisión a los vendedores y el código del producto con menor número
de unidades vendidas.
• Calcular y mostrar por sucursal su código, descripción, el monto total vendido, el porcentaje
de venta alcanzado en función de lo esperado y el código y monto del punto de venta que
más pagó por comisión de venta.
• Calcular y mostrar el porcentaje de las sucursales que alcanzaron el monto de venta
esperado.
*/
import 'dart:io';

const double PVP1 = 100.0; // Precio de producto 1
const double PVP2 = 150.0; // Precio de producto 2
const double PVP3 = 200.0; // Precio de producto 3

class PuntoVenta {
	final int codigo; // 4 dígitos: dos primeros = sucursal
	final int numVendedores;
	final Map<int, int> unidadesPorProducto; // clave: 1..3 => unidades

	PuntoVenta(this.codigo, this.numVendedores, this.unidadesPorProducto);

	int get totalUnidades => unidadesPorProducto.values.fold(0, (a, b) => a + b);

	double get montoBruto => (unidadesPorProducto[1]! * PVP1) +
			(unidadesPorProducto[2]! * PVP2) +
			(unidadesPorProducto[3]! * PVP3);

	double get montoComision => montoBruto * 0.10; // 10% de ventas brutas

	// Monto neto de la venta que queda para la empresa (bruto - comisión)
	double get montoNeto => montoBruto - montoComision;

	int productoConMenosUnidades() {
		// devuelve el código del producto (1..3) con menor número de unidades vendidas
		var entries = unidadesPorProducto.entries.toList();
		entries.sort((a, b) {
			if (a.value != b.value) return a.value.compareTo(b.value);
			return a.key.compareTo(b.key); // si empate, menor código
		});
		return entries.first.key;
	}
}

class Sucursal {
	final int codigo; // 2 dígitos
	final String descripcion;
	final double ventaEsperada;
	final List<PuntoVenta> puntos;

	Sucursal(this.codigo, this.descripcion, this.ventaEsperada, this.puntos);

	double get montoTotalVendido =>
			puntos.fold(0.0, (s, p) => s + p.montoNeto); // sumamos montos netos

	double get porcentajeAlcanzado =>
			(ventaEsperada == 0) ? 0.0 : (montoTotalVendido / ventaEsperada) * 100.0;

	PuntoVenta puntoQueMasPagoComision() {
		// retorna el punto que mayor monto pagó en comisiones
		return puntos.reduce((a, b) => a.montoComision >= b.montoComision ? a : b);
	}
}

void main() {
	// Datos de ejemplo.
	// Aquí puedes modificar o ampliar según el caso de prueba que necesites.
	final sucursales = <Sucursal>[
		Sucursal(10, 'Sucursal Norte', 50000.0, [
			PuntoVenta(1001, 5, {1: 40, 2: 10, 3: 5}),
			PuntoVenta(1002, 4, {1: 10, 2: 20, 3: 15}),
		]),
		Sucursal(20, 'Sucursal Centro', 70000.0, [
			PuntoVenta(2001, 6, {1: 50, 2: 50, 3: 50}),
			PuntoVenta(2002, 3, {1: 0, 2: 5, 3: 10}),
			PuntoVenta(2003, 4, {1: 10, 2: 5, 3: 2}),
		]),
		Sucursal(30, 'Sucursal Sur', 30000.0, [
			PuntoVenta(3001, 2, {1: 20, 2: 0, 3: 0}),
		]),
	];

	// Impresiones por punto de venta
	print('--- Por punto de venta ---');
	for (var suc in sucursales) {
		for (var pv in suc.puntos) {
			print('Punto: ${pv.codigo}');
			print('  Unidades vendidas: ${pv.totalUnidades}');
			print('  Monto bruto: \$${pv.montoBruto.toStringAsFixed(2)}');
			print('  Monto neto (después de comisión): \$${pv.montoNeto.toStringAsFixed(2)}');
			print('  Monto pagado por comisión: \$${pv.montoComision.toStringAsFixed(2)}');
			print('  Producto con menos unidades vendidas: ${pv.productoConMenosUnidades()}');
			print('');
		}
	}

	// Por sucursal
	print('--- Por sucursal ---');
	for (var suc in sucursales) {
		var puntoMaxCom = suc.puntoQueMasPagoComision();
		print('Sucursal: ${suc.codigo} - ${suc.descripcion}');
		print('  Monto total vendido (neto): \$${suc.montoTotalVendido.toStringAsFixed(2)}');
		print('  Porcentaje alcanzado en función de lo esperado: ${suc.porcentajeAlcanzado.toStringAsFixed(2)}%');
		print('  Punto que más pagó en comisiones: ${puntoMaxCom.codigo} (\$${puntoMaxCom.montoComision.toStringAsFixed(2)})');
		print('');
	}

	// Porcentaje de sucursales que alcanzaron el monto esperado
	final alcanzaron = sucursales.where((s) => s.montoTotalVendido >= s.ventaEsperada).length;
	final porcentajeAlcanzaron = (sucursales.isEmpty) ? 0.0 : (alcanzaron / sucursales.length) * 100.0;
	print('Porcentaje de sucursales que alcanzaron el monto esperado: ${porcentajeAlcanzaron.toStringAsFixed(2)}%');

	// Ejemplo de uso interactivo (opcional): preguntar si quiere ver detalle por sucursal
	stdout.write('\n¿Desea ver un resumen por sucursal con puntos? (s/n): ');
	var resp = stdin.readLineSync();
	if (resp != null && resp.trim().toLowerCase() == 's') {
		for (var suc in sucursales) {
			print('\nSucursal ${suc.codigo} - ${suc.descripcion}');
			for (var pv in suc.puntos) {
				print('  Punto ${pv.codigo}: unidades=${pv.totalUnidades}, neto=\$${pv.montoNeto.toStringAsFixed(2)}, comision=\$${pv.montoComision.toStringAsFixed(2)}');
			}
		}
	}
}