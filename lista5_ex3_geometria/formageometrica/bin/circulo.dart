import 'formageometrica.dart';

class Circulo implements FormaGeometrica {
  double raio;

  Circulo(this.raio);
  @override
  double calcArea() {
    return 2 * raio * raio;
  }

  @override
  double calcPerimetro() {
    return 2 * 3.14 * raio;
  }
}
