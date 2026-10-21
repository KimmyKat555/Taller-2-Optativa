import 'dart:io';
import 'ejercicio_base.dart';

class DoubleOrTriple extends EjercicioBase {
  @override
  String get nombre => "Double or Triple";

  @override
  void ejecutar() {
    stdout.write("Ingrese el primer numero: ");
    String entrada1 = stdin.readLineSync() ?? "";
    double? primerNumero = double.tryParse(entrada1);

    if (primerNumero == null) {
      print("Entrada no válida para el primer número.");
      return;
    }

    stdout.write("Ingrese el segundo número: ");
    String entrada2 = stdin.readLineSync() ?? "";
    double? segundoNumero = double.tryParse(entrada2);

    if (segundoNumero == null) {
      print("Entrada no válida para el segundo número.");
      return;
    }

    if (primerNumero > segundoNumero) {
      double resultado = primerNumero * 2;
      if (resultado == resultado.truncateToDouble()) {
        print("Resultado: ${resultado.toInt()}");
      } else {
        print("Resultado: $resultado");
      }
    } else {
      double resultado = segundoNumero * 3;
      if (resultado == resultado.truncateToDouble()) {
        print("Resultado: ${resultado.toInt()}");
      } else {
        print("Resultado: $resultado");
      }
    }
  }
}