import 'conta.dart';

class ContaCorrente implements Conta {
  final double _limite = 200;
  double _saldo = 0;

  @override
  depositar(double valor) {
    _saldo += valor;
  }

  @override
  bool sacar(double valor) {
    if (valor <= (_saldo + _limite)) {
      _saldo -= valor;
      return true;
    }
    return false;
  }

  @override
  double get saldo => _saldo;
}
