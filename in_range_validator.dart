import 'dart:io';
import 'ejercicio_base.dart';

class InRangeValidator extends EjercicioBase {
  @override
  String get nombre => "InRange Validator";

  @override
  void ejecutar() {
    stdout.write("Ingrese un número entre el rango de 10 a 20: ");
    String entrada = stdin.readLineSync() ?? "";
    double? numero = double.tryParse(entrada);

    if (numero == null) {
      print("Entrada no válida. Debe ingresar un número.");
      return;
    }

    if (numero >= 10 && numero <= 20) {
      print("Resultado: Está en el rango.");
    } else {
      print("Resultado: Fuera del rango.");
    }
  }
}