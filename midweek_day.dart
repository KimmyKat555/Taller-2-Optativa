import 'dart:io';
import 'ejercicio_base.dart';

class MidweekDay extends EjercicioBase {
  @override
  String get nombre => "Midweek Day";

  @override
  void ejecutar() {
    stdout.write("Ingrese un número entre 1 y 7: ");
    String entrada = stdin.readLineSync() ?? "";
    int? dia = int.tryParse(entrada);

    if (dia == null) {
      print("Entrada no válida. Debe ingresar un número entero.");
      return;
    }

    switch (dia) {
      case 1:
        print("Resultado: Lunes");
        break;
      case 2:
        print("Resultado: Martes");
        break;
      case 3:
        print("Resultado: Miércoles");
        break;
      case 4:
        print("Resultado: Jueves");
        break;
      case 5:
        print("Resultado: Viernes");
        break;
      case 6:
      case 7:
        print("Resultado: Número fuera del rango laboral.");
        break;
      default:
        print("Resultado: Número fuera de rango.");
        break;
    }
  }
}