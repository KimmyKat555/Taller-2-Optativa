import 'dart:io';
import 'ejercicio_base.dart';

class PositivePower extends EjercicioBase {
  @override
  String get nombre => "Positive power";

  @override
  void ejecutar() {
    stdout.write("Ingrese un numero: ");
    String entrada = stdin.readLineSync() ?? "";
    double? numero = double.tryParse(entrada);

    if (numero == null) {
      print("Entrada no válida. Debe ingresar un numero.");
      return;
    }

    if (numero > 0) {
      double resultado = numero * numero;
      
      // funciones para formatear el resultado sin decimales y sea entero
      if (resultado == resultado.truncateToDouble()) {
        print("Resultado: ${resultado.toInt()}");
      } else {
        print("Resultado: $resultado");
      }
      
    } else if (numero < 0) {
      print("Resultado: Número negativo.");
    } else {
      print("Resultado: 0");
    }
  }
}