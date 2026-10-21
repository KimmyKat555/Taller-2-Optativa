import 'dart:io';
import 'ejercicio_base.dart';

class VowelCounter extends EjercicioBase {
  @override
  String get nombre => "Vowel Counter";

  @override
  void ejecutar() {
    stdout.write("Ingrese una palabra: ");
    String palabra = (stdin.readLineSync() ?? "").toLowerCase();

    int contadorVocales = 0;
    String vocales = "aeiouáéíóú";

    for (int i = 0; i < palabra.length; i++) {
      String caracter = palabra[i];
      if (vocales.contains(caracter)) {
        contadorVocales++;
      }
    }

    print("Resultado: $contadorVocales");
  }
}