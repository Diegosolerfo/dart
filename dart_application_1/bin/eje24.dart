/*
Un hombre desea saber cuánto dinero se generará por concepto de intereses sobre la cantidad
que tiene en inversión en el banco. El decidirá reinvertir los intereses siempre y cuando éstos
excedan a $7000 y en ese caso, desea saber cuánto dinero tendrá finalmente en su cuenta.
*/
import 'dart:io';

void main(){
    print("digite la cantidad que invirtio: ");
    int enBanco = int.parse(stdin.readLineSync()!);
    print("digite el porcentaje de interes: ");
    int interes = int.parse(stdin.readLineSync()!);
    double intereses = (interes/100)*enBanco;
    double cuenta = enBanco+intereses;
    
    print("En su cuenta tenia $enBanco y tiene $cuenta");
    if(intereses > 7000){
        print("Los intereses pasaron los 7000!!! son $intereses");
    }else{
        print("Los intereses no pasaron los 7000 :( son $intereses");
    }

}