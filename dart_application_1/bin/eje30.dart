/*
Se tienen 4 dígitos en las variables A, B, C, D que forman un entero positivo N. Se desea redondear
N a la centena más próxima y mostrar el resultado. Considere los siguientes ejemplos: Si A es 2, B
es 3, C es 6 y D es 2, entonces N es 2362 y el resultado redondeado es 2400. Si N es 2342, el
resultado redondeado será 2300 y si N es 2962, el resultado redondeado será 3000.
*/
import 'dart:io';
void main(){
    
    print('Ingrese el digito A (0-9): ');
    int A = int.parse(stdin.readLineSync()!);
    print('Ingrese el digito B (0-9): ');
    int B = int.parse(stdin.readLineSync()!);
    print('Ingrese el digito C (0-9): ');
    int C = int.parse(stdin.readLineSync()!);
    print('Ingrese el digito D (0-9): ');
    int D = int.parse(stdin.readLineSync()!);
    
    int N = A * 1000 + B * 100 + C * 10 + D;
    print('El numero formado es: $N');
    
    int centenas = N ~/ 100;
    int resto = N % 100;

    if (resto >= 50) {
        centenas += 1;
    }
    
    int numeroRedondeado = centenas * 100;
    print('El número redondeado a la centena mas próxima es: $numeroRedondeado');
}