import 'dart:io';
import 'ejercicio_base.dart';

class FractionDifference extends EjercicioBase {
  @override
  String get nombre => "Fraction Difference";

  @override
  void ejecutar() {
    stdout.write("Ingrese la primera fracción (ej. 1/2): ");
    String entrada1 = stdin.readLineSync() ?? "";

    stdout.write("Ingrese la segunda fracción (ej. 1/3): ");
    String entrada2 = stdin.readLineSync() ?? "";

    // Obtener valores mediante la función auxiliar
    var frac1 = _procesarFraccion(entrada1);
    var frac2 = _procesarFraccion(entrada2);

    if (frac1 == null || frac2 == null) {
      print("Entrada no válida. Use el formato 'a/b' con números enteros.");
      return;
    }

    int num1 = frac1['num']!;
    int den1 = frac1['den']!;
    int num2 = frac2['num']!;
    int den2 = frac2['den']!;

    if (den1 == 0 || den2 == 0) {
      print("El denominador no puede ser cero.");
      return;
    }

    // Resta de fracciones: (a/b) - (c/d) = (a*d - c*b) / (b*d)
    int numResta = (num1 * den2) - (num2 * den1);
    int denResta = den1 * den2;

    if (numResta == 0) {
      print("Resultado: 0");
    } else {
      // Simplificación por el máximo común divisor
      int mcd = _obtenerMCD(numResta.abs(), denResta.abs());
      numResta ~/= mcd;
      denResta ~/= mcd;

      if (denResta < 0) {
        numResta = -numResta;
        denResta = -denResta;
      }

      if (denResta == 1) {
        print("Resultado: $numResta");
      } else {
        print("Resultado: $numResta/$denResta");
      }
    }
  }

  // Función auxiliar para procesar la fracción en formato texto
  Map<String, int>? _procesarFraccion(String entrada) {
    List<String> partes = entrada.split('/');
    
    if (partes.length == 1) {
      int? num = int.tryParse(partes[0].trim());
      if (num != null) {
        return {'num': num, 'den': 1};
      }
    } else if (partes.length == 2) {
      int? num = int.tryParse(partes[0].trim());
      int? den = int.tryParse(partes[1].trim());
      if (num != null && den != null) {
        return {'num': num, 'den': den};
      }
    }
    return null;
  }

  // Función auxiliar para calcular el MCD
  int _obtenerMCD(int a, int b) {
    while (b != 0) {
      int temp = b;
      b = a % b;
      a = temp;
    }
    return a;
  }
}