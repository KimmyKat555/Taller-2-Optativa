import 'dart:io';
import 'ejercicio_base.dart';

class TaxCalculator extends EjercicioBase {
  @override
  String get nombre => "Tax Calculator";

  @override
  void ejecutar() {
    stdout.write("Ingrese su salario anual: ");
    String entrada = stdin.readLineSync() ?? "";
    double? salario = double.tryParse(entrada);

    if (salario == null) {
      print("Entrada no válida. Debe ingresar un número.");
      return;
    }

    if (salario < 0) {
      print("El salario no puede ser negativo.");
      return;
    }

    const double limiteBase = 12000;
    const double porcentajeImpuesto = 0.15;

    if (salario > limiteBase) {
      double excedente = salario - limiteBase;
      double impuesto = excedente * porcentajeImpuesto;

      if (impuesto == impuesto.truncateToDouble()) {
        print("Resultado: ${impuesto.toInt()}");
      } else {
        print("Resultado: $impuesto");
      }
    } else {
      print("Resultado: No debe impuestos.");
    }
  }
}