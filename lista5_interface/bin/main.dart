import 'conta.dart';
import 'conta_corrente.dart';
import 'conta_poupanca.dart';
import 'dart:io';

void main() {
  Conta conta;

  print('Tipo da conta: \n1. Conta corrente \n2. Conta Poupança');
  String tipo = stdin.readLineSync()!;
  if (tipo == '1') {
    conta = ContaCorrente();
  } else {
    conta = ContaPoupanca();
  }

  String opc = '';
  while (opc != '4') {
    print(
        'Informe a opção: \n1. Depositar \n2. Sacar \n3. Consultar extrato \n4. Sair');
    opc = stdin.readLineSync()!;
    switch (opc) {
      case '1':
        print('Informe o valor do depósito:');
        conta.depositar(double.parse(stdin.readLineSync()!));
        break;

      case '2':
        print('Informe o valor do saque');
        bool valida = conta.sacar(double.parse(stdin.readLineSync()!));
        if (valida) {
          print(
              'Saque realizado com sucesso, seu novo saldo é de R\$${conta.saldo}');
        }
        print('Saldo insuficiente, seu saldo atual é de R\$${conta.saldo}');

        break;

      case '3':
        print('O saldo na conta é ${conta.saldo.toStringAsFixed(2)}');
        break;
    }
  }

  // conta.depositar(100);
  // conta.sacar(150);
  // print(conta.saldo);

  // String entrada = '';
  // String sair = 'sair';
  // while (entrada != sair) {
  //   print('''Insira o tipo de conta que deseja criar:
  // 1. Conta corrente
  // 2. Conta poupança ''');
  //   entrada = stdin.readLineSync()!.toLowerCase();
  //   switch (entrada) {
  //     case '1':
  //       Conta cc = ContaCorrente();
  //       print('''Conta corrente criada, escolha uma das opções a seguir
  //       1. Depositar
  //       2. Sacar
  //       3. Consultar extrato''');
  //       entrada = stdin.readLineSync()!;
  //       switch (entrada) {
  //         case '1':
  //           print('Insira o valor a ser depositado:');
  //           cc.depositar(double.parse(stdin.readLineSync()!));
  //           print(cc.saldo);

  //         case '2':
  //           print('Insira o valor do saque:');
  //           cc.sacar(double.parse(stdin.readLineSync()!));
  //           if (cc.sacar == false) {
  //             print(
  //                 'Não há saldo suficiente em conta, saldo atual: ${cc.saldo}');
  //           }
  //           print(cc.saldo);
  //       }
  //   }
  // }
}
