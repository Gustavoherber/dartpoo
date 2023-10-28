import 'formageometrica.dart';

class Quadrado implements FormaGeometrica {
  double lado = 0;

  Quadrado(this.lado);

  @override
  double calcArea() {
    return lado = lado * lado;
  }

  @override
  double calcPerimetro() {
    return lado = 4 * lado;
  }
}
