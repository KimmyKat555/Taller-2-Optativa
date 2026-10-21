import 'dart:io';
import 'ejercicio_base.dart';

class AverageOfFour extends EjercicioBase {
  @override
  String get nombre => "Average of Four";

  @override
  void ejecutar() {
    double suma = 0;
    const int cantidadNumeros = 4;

    for (int i = 1; i <= cantidadNumeros; i++) {
      stdout.write("Ingrese el número $i: ");
      String entrada = stdin.readLineSync() ?? "";
      double? numero = double.tryParse(entrada);

      if (numero == null) {
        print("Entrada no válida. Debe ingresar un número.");
        return;
      }
      suma += numero;
    }

    double promedio = suma / cantidadNumeros;

    if (promedio == promedio.truncateToDouble()) {
      print("Resultado: ${promedio.toInt()}");
    } else {
      print("Resultado: $promedio");
    }
  }
}