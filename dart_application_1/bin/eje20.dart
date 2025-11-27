/*
Calcule qué tanto por ciento anual cobraron por un préstamo de Bolívares X, si se pagaron Bolívares
Y de intereses en 4 años. La fórmula del interés es:
Capital. Tiempo. Razón
I = ------------------------------
100
*/
import 'dart:io';
void main(){
    print("Digite el capital del prestamo: ");
    int capital = int.parse(stdin.readLineSync()!);
    final tiempoA = 4;
    print("Digite la razon del prestamo: ");
    int razon = int.parse(stdin.readLineSync()!);
    double I = (capital*tiempoA*razon)/100;

    print("El intereses que se le cobra es de: $I");
}
