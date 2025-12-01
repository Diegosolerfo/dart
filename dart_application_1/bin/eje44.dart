/*
Una persona desea iniciar un negocio, para lo cual piensa verificar cuánto dinero le prestaría el
banco por hipotecar su casa. Tiene una cuenta bancaria, pero no quiere disponer de ella a menos
que el monto por hipotecar su casa sea muy pequeño. Si el monto de la hipoteca es menor que
$1.000.000 entonces invertirá el 50% de la inversión total, y un socio invertirá el otro 50%. Si el
monto de la hipoteca es de $1.000.000 o más, entonces invertirá el monto total de la hipoteca y el
resto del dinero que se necesite para cubrir la inversión total se repartirá a partes iguales entre el
socio y él.
*/
import 'dart:io';
void main(){
  print("Digite el monto de la hipoteca: ");
  double hipoteca = double.parse(stdin.readLineSync()!);
  print("Digite el monto de la inversión total: ");
  double inversionTotal = double.parse(stdin.readLineSync()!);
  
  if(hipoteca < 1000000){
    double inversionPersona = inversionTotal * 0.5;
    double inversionSocio = inversionTotal * 0.5;
    print("La persona invertirá: \$$inversionPersona");
    print("El socio invertirá: \$$inversionSocio");
  } else {
    double inversionPersona = hipoteca + (inversionTotal - hipoteca) * 0.5;
    double inversionSocio = (inversionTotal - hipoteca) * 0.5;
    print("La persona invertirá: \$$inversionPersona");
    print("El socio invertirá: \$$inversionSocio");
  }
}