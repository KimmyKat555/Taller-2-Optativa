import 'dart:io';
import 'ejercicio_base.dart';

class FactorialFinder extends EjercicioBase {
  @override
  String get nombre => "Factorial Finder";

  @override
  void ejecutar() {
    stdout.write("Ingrese un número entero no negativo: ");
    String entrada = stdin.readLineSync() ?? "";
    int? numero = int.tryParse(entrada);

    if (numero == null || numero < 0) {
      print("Entrada no válida. Debe ingresar un número entero mayor o igual a 0.");
      return;
    }

    int factorial = 1;
    for (int i = 1; i <= numero; i++) {
      factorial *= i;
    }

    print("Resultado: $factorial");
  }
}