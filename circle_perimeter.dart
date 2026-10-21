import 'dart:io';
import 'dart:math'; 
import 'ejercicio_base.dart';

class CirclePerimeter extends EjercicioBase {
  @override
  String get nombre => "Circle Perimeter";

  @override
  void ejecutar() {
    stdout.write("Ingrese el radio del círculo: ");
    String entrada = stdin.readLineSync() ?? "";
    double? radio = double.tryParse(entrada);

    if (radio == null) {
      print("Entrada no válida. Debe ingresar un número.");
      return;
    }

    if (radio < 0) {
      print("El radio no puede ser negativo.");
      return;
    }

    // formula para el perímetro: 2 * pi * radio
    double perimetro = 2 * pi * radio;

    // formateo a dos decimales según los casos de prueba
    print("Resultado: ${perimetro.toStringAsFixed(2)}");
  }
}