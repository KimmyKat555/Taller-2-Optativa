import 'dart:io';
import 'ejercicio_base.dart';
import 'positive_power.dart'; 
import 'double_or_triple.dart';
import 'root_or_square.dart';
import 'circle_perimeter.dart';

void main() {
  List<EjercicioBase> ejercicios = [
    PositivePower(),
    DoubleOrTriple(),
    RootOrSquare(),
    CirclePerimeter(),
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