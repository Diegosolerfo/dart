void main(){
  //Si tengo una map y quiero sumarlo lo puedo hacer con fold asi:
  Map<String, double> precios = {
    'manzana': 2.5,
    'banana': 1.2,
    'naranja': 3.0,
  };
  double total = precios.values.fold(0, (a, b) => a + b);
  print("Total de precios: \$${total.toStringAsFixed(2)}");
  // Esto sumara todo los valores del map para obtener el total a es como la clave, y b es el valor 
  // o tambien puede decirse que a es el acumulador y b es el valor actual, hace como un loop sumando todo

  var numero = 12.13;
  print("Numero con tostringAsFixed(1): ${numero.toStringAsFixed(0)}");
  print("Numero con tostringAsFixed(1): ${numero.toStringAsFixed(1)}");
  print("Numero con tostringAsFixed(2): ${numero.toStringAsFixed(2)}");
  print("Numero con tostringAsFixed(3): ${numero.toStringAsFixed(3)}");
  //La funcion toStingAsFixed sirve para definir la cantidad de decimales que quiero mostrar en un numero decimal
  
}