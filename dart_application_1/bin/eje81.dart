/*
Una empresa proveedora de equipos de computación desea una aplicación que le permita controlar
las ventas y las comisiones de venta en los diferentes estados y ciudades donde posean canales de
comercialización. Para cada Estado pueden existir varias ciudades donde la empresa está presente;
a su vez cada ciudad puede contener canales de comercialización con vendedores de tienda (locales)
y de calle. Cada ciudad tiene asignada una cantidad de unidades de venta esperada. Cada estado,
ciudad, canal de comercialización y vendedor es identificado por códigos numéricos de 2,3,4 y 5
dígitos respectivamente. Los dos últimos dígitos del código de ciudad deben ser igual al código del
estado y los dos primeros dígitos del código de vendedor indican si el mismo es de tienda (valor 11)
o de calle (valor 12). La empresa paga un porcentaje de comisión del 10% para los vendedores de
tienda y un 15% de comisión para los vendedores de calle en función del monto total vendido por
los mismos, es decir, que la aplicación debe pedir por vendedor el total de unidades vendidas y el
monto total correspondiente a esa cantidad. La empresa le solicita que desarrolle un programa que
cubra lo siguiente:
• Calcular e imprimir por ciudad el código, el nombre, total de unidades vendidas, monto total bruto,
monto de comisión por vendedores de tienda, monto de comisión por vendedores de calle, código
del canal de comercialización con mayor monto neto de veta y el código del vendedor con menor
número de unidades vendidas.
• Calcular e imprimir por Estado el código, nombre, mono neto vendido, el porcentaje de ciudades que
no alcanzaron las cantidades esperadas y la cantidad de ciudades que obtuvieron de un 40% a un
60% por encima de la cantidad esperada.
*/
class Vendedor {
  int codigo;
  int unidadesVendidas;
  double montoTotal;

  Vendedor(this.codigo, this.unidadesVendidas, this.montoTotal);

  bool get esTienda => codigo.toString().startsWith("11");
  bool get esCalle => codigo.toString().startsWith("12");

  double get comision {
    if (esTienda) return montoTotal * 0.10;
    if (esCalle) return montoTotal * 0.15;
    return 0;
  }

  double get montoNeto => montoTotal - comision;
}

class Canal {
  int codigo;
  List<Vendedor> vendedores = [];

  Canal(this.codigo);

  double get montoTotal =>
      vendedores.fold(0, (s, v) => s + v.montoTotal);

  double get montoNeto =>
      vendedores.fold(0, (s, v) => s + v.montoNeto);
}

class Ciudad {
  int codigo;
  String nombre;
  int esperado;
  List<Canal> canales = [];

  Ciudad(this.codigo, this.nombre, this.esperado);

  int get totalUnidades =>
      canales.fold(0, (s, c) => s + c.vendedores.fold(0, (s2, v) => s2 + v.unidadesVendidas));

  double get montoBruto =>
      canales.fold(0, (s, c) => s + c.montoTotal);

  double get comisionTienda =>
      canales.fold(0, (s, c) => s + c.vendedores.where((v) => v.esTienda)
          .fold(0, (a, v) => a + v.comision));

  double get comisionCalle =>
      canales.fold(0, (s, c) => s + c.vendedores.where((v) => v.esCalle)
          .fold(0, (a, v) => a + v.comision));

  int canalMayorNeto() {
    canales.sort((a, b) => b.montoNeto.compareTo(a.montoNeto));
    return canales.first.codigo;
  }

  int vendedorMenosUnidades() {
    List<Vendedor> todos = [];
    for (var c in canales) {
      todos.addAll(c.vendedores);
    }
    todos.sort((a, b) => a.unidadesVendidas.compareTo(b.unidadesVendidas));
    return todos.first.codigo;
  }
}

class Estado {
  int codigo;
  String nombre;
  List<Ciudad> ciudades = [];

  Estado(this.codigo, this.nombre);

  double get montoNeto => ciudades.fold(0, (s, c) => s + c.montoBruto);

  double porcentajeCiudadesNoCumplieron() {
    int n = ciudades.where((c) => c.totalUnidades < c.esperado).length;
    return (n / ciudades.length) * 100;
  }

  int ciudades40a60PorCientoExtra() {
    return ciudades.where((c) =>
        c.totalUnidades >= c.esperado * 1.4 &&
        c.totalUnidades <= c.esperado * 1.6).length;
  }
}

void main() {
  Estado edo = Estado(10, "Carabobo");

  Ciudad c1 = Ciudad(1010, "Valencia", 1000);
  Canal ca1 = Canal(501);
  ca1.vendedores.add(Vendedor(11001, 300, 3000));
  ca1.vendedores.add(Vendedor(12002, 500, 7000));
  c1.canales.add(ca1);

  Canal ca2 = Canal(502);
  ca2.vendedores.add(Vendedor(11003, 200, 1500));
  c1.canales.add(ca2);

  Ciudad c2 = Ciudad(1020, "Naguanagua", 800);
  Canal ca3 = Canal(503);
  ca3.vendedores.add(Vendedor(12005, 1000, 10000));
  c2.canales.add(ca3);

  edo.ciudades.add(c1);
  edo.ciudades.add(c2);
  
  for (var ciudad in edo.ciudades) {
    print("Ciudad: ${ciudad.nombre} (${ciudad.codigo})");
    print("Total unidades vendidas: ${ciudad.totalUnidades}");
    print("Monto bruto total: ${ciudad.montoBruto}");
    print("Comisión tienda: ${ciudad.comisionTienda}");
    print("Comisión calle: ${ciudad.comisionCalle}");
    print("Canal mayor monto neto: ${ciudad.canalMayorNeto()}");
    print("Vendedor con menor unidades: ${ciudad.vendedorMenosUnidades()}");
    print("---------------------------------\n");
  }

  print("Estado: ${edo.nombre} (${edo.codigo})");
  print("Monto neto total vendido: ${edo.montoNeto}");
  print("Porcentaje ciudades NO cumplieron: ${edo.porcentajeCiudadesNoCumplieron()}%");
  print("Ciudades entre 40% y 60% extra: ${edo.ciudades40a60PorCientoExtra()}");
}
