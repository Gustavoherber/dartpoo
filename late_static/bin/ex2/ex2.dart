void main() {
  int numero = -10;
  int numero2 = -32;
  print(numero.ePositivo());
  print(numero2.eNegativo());
}

extension Tipoint on int {
  bool ePositivo() => this >= 0;

  bool eNegativo() => this < 0;
}
