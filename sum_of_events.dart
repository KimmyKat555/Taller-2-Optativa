import 'ejercicio_base.dart';

class SumOfEvens extends EjercicioBase {
  @override
  String get nombre => "Sum of Evens";

  @override
  void ejecutar() {
    int suma = 0;

    for (int i = 2; i <= 50; i += 2) {
      suma += i;
    }

    print("Resultado: $suma");
  }
}