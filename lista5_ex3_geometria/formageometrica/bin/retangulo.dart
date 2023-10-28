import 'formageometrica.dart';

class Retangulo implements FormaGeometrica {
  double base;
  double altura;

  Retangulo(this.base, this.altura);

  @override
  double calcArea() {
    return base * altura;
  }

  @override
  double calcPerimetro() {
    return 2 * (base + altura);
  }
}
