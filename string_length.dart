import 'dart:io';
import 'ejercicio_base.dart';

class StringLength extends EjercicioBase {
  @override
  String get nombre => "String Length";

  @override
  void ejecutar() {
    stdout.write("Ingrese una palabra o texto: ");
    String entrada = stdin.readLineSync() ?? "";

    int longitud = entrada.trim().length;

    print("Resultado: $longitud");
  }
}