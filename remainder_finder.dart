import 'dart:io';
import 'ejercicio_base.dart';

class RemainderFinder extends EjercicioBase {
  @override
  String get nombre => "Remainder Finder";

  @override
  void ejecutar() {
    stdout.write("Ingrese el primer número (dividendo): ");
    String entrada1 = stdin.readLineSync() ?? "";
    int? primerNumero = int.tryParse(entrada1);

    if (primerNumero == null) {
      print("Entrada no válida para el primer número.");
      return;
    }

    stdout.write("Ingrese el segundo número (divisor): ");
    String entrada2 = stdin.readLineSync() ?? "";
    int? segundoNumero = int.tryParse(entrada2);

    if (segundoNumero == null) {
      print("Entrada no válida para el segundo número.");
      return;
    }

    if (segundoNumero == 0) {
      print("Error: No es posible dividir entre cero.");
      return;
    }

    int residuo = primerNumero % segundoNumero;
    print("Resultado: $residuo");
  }
}