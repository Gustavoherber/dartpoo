import 'metodoreal.dart';
import 'real.dart';

void main(List<String> args) {
  Real real = Real(10.131231231);
  print(real.toInt());
  print(real.paraString());
  print(real.paraStringAsFixed(4));
  real.deString('6582431');
  print(real.valor);
}
