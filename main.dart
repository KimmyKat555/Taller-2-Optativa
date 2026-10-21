import 'dart:io';
import 'average_of_four.dart';
import 'ejercicio_base.dart';
import 'factorial_finder.dart';
import 'in_range_validator.dart';
import 'positive_power.dart'; 
import 'double_or_triple.dart';
import 'root_or_square.dart';
import 'circle_perimeter.dart';
import 'midweek_day.dart';
import 'smallest_of_five.dart';
import 'tax_calculator.dart';
import 'remainder_finder.dart';
import 'sum_of_events.dart';
import 'fraction_difference.dart';
import 'string_length.dart';
import 'vowel_counter.dart'; 

void main() {
  List<EjercicioBase> ejercicios = [
    PositivePower(),
    DoubleOrTriple(),
    RootOrSquare(),
    CirclePerimeter(),
    MidweekDay(),
    TaxCalculator(),
    RemainderFinder(),
    SumOfEvens(),
    FractionDifference(),
    StringLength(),
    AverageOfFour(),
    SmallestOfFive(),
    VowelCounter(),
    FactorialFinder(),
    InRangeValidator(),
  ];

  bool salir = false;

  do {
    print("\n----- Menú de ejercicios -----");

    for (int i = 0; i < ejercicios.length; i++) {
      print("${i + 1}. ${ejercicios[i].nombre}");
    }

    print("0. Salir");
    print("--------------");
    stdout.write("Seleccione una opción: ");

    String entrada = stdin.readLineSync() ?? "";
    int? opcion = int.tryParse(entrada);

    if (opcion != null) {
      if (opcion == 0) {
        salir = true;
        print("\n¡Hasta luego!");
      } else if (opcion > 0 && opcion <= ejercicios.length) {
        print("\n--- ${ejercicios[opcion - 1].nombre} ---\n");
        ejercicios[opcion - 1].ejecutar();

        print("\nPresione cualquier tecla para regresar al menú...");
        stdin.readLineSync();
      } else {
        mostrarMensajeError("Opción fuera de rango. Ingrese un número válido.");
      }
    } else {
      mostrarMensajeError("Por favor, ingrese un número entero válido.");
    }

  } while (!salir);
}

void mostrarMensajeError(String mensaje) {
  print("\nError: $mensaje");
  print("Presione cualquier tecla para continuar...");
  stdin.readLineSync();
}