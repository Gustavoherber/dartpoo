import 'real.dart';

extension Realint on Real {
  int toInt() {
    return valor.toInt();
  }

  String paraString() {
    return valor.toString();
  }

  String paraStringAsFixed(int digits) {
    return valor.toStringAsFixed(digits);
  }

  void deString(String value) {
    valor = double.parse(value);
  }
}


// extension RealString on Real {
//   String paraString() {
//     return valor.toString();
//   }
// }
