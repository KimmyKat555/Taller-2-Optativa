import 'dart:io';
import 'dart:math'; 
import 'ejercicio_base.dart';

class RootOrSquare extends EjercicioBase {
  @override
  String get nombre => "Root or Square";

  @override
  void ejecutar() {
    stdout.write("Ingrese un número: ");
    String entrada = stdin.readLineSync() ?? "";
    double? numero = double.tryParse(entrada);

    if (numero == null) {
      print("Entrada no válida. Debe ingresar un número.");
      return;
    }

    if (numero > 0) {
      double raiz = sqrt(numero);
      if (raiz == raiz.truncateToDouble()) {
        print("Resultado: ${raiz.toInt()}");
      } else {
        print("Resultado: $raiz");
      }
    } else if (numero < 0) {
      double cuadrado = numero * numero;
      if (cuadrado == cuadrado.truncateToDouble()) {
        print("Resultado: ${cuadrado.toInt()}");
      } else {
        print("Resultado: $cuadrado");
      }
    } else {
      print("Resultado: 0");
    }
  }
}