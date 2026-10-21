import 'dart:io';
import 'ejercicio_base.dart';

class SmallestOfFive extends EjercicioBase {
  @override
  String get nombre => "Smallest of Five";

  @override
  void ejecutar() {
    const int cantidadNumeros = 5;
    double menor = double.infinity; 

    for (int i = 1; i <= cantidadNumeros; i++) {
      stdout.write("Ingrese el número $i: ");
      String entrada = stdin.readLineSync() ?? "";
      double? numero = double.tryParse(entrada);

      if (numero == null) {
        print("Entrada no válida. Debe ingresar un número.");
        return;
      }

      if (numero < menor) {
        menor = numero;
      }
    }

    if (menor == menor.truncateToDouble()) {
      print("Resultado: ${menor.toInt()}");
    } else {
      print("Resultado: $menor");
    }
  }
}