import 'engenheiro.dart';
import 'funcionario.dart';
import 'gerente.dart';
import 'dart:io';

import 'supervisor.dart';

void main(List<String> args) {
  List<Funcionario> listaFuncionario = [];
  List<Gerente> listaGerente = [];
  List<Engenheiro> listaEngenheiro = [];
  List<Supervisor> listaSupervisor = [];

  String opc = '';
  while (opc != '5') {
    print(
        'Informe a opção \n1. Funcionário \n2. Gerente \n3. Engenheiro \n4. Supervisor \n5. Sair');
    opc = stdin.readLineSync()!;
    switch (opc) {
      case '1':
        Funcionario funcionario = cadastraFuncionario();
        listaFuncionario.add(funcionario);
        // cadastraFuncionario();
        break;

      case '2':
        Gerente gerente = cadastraGerente();
        listaGerente.add(gerente);
        // cadastraGerente();
        break;

      case '3':
        Engenheiro engenheiro = cadastraEngenheiro();
        listaEngenheiro.add(engenheiro);
        // cadastraGerente();
        break;

      case '4':
        Supervisor supervisor = cadastraSupervisor();
        listaSupervisor.add(supervisor);
        // cadastraGerente();
        break;

      default:
        print('Aplicação encerrada');
    }

    for (Funcionario i in listaFuncionario) {
      print(
          'Nome: ${i.nome}, CPF: ${i.cpf}, Salário: ${i.salario}, Bonificação: ${i.calcularBonificacao()}');
    }

    for (Gerente i in listaGerente) {
      print(
          'Nome: ${i.nome}, CPF: ${i.cpf}, Salário: ${i.salario}, Bonificação: ${i.calcularBonificacao()}');
    }

    for (Engenheiro i in listaEngenheiro) {
      print(
          'Nome: ${i.nome}, CPF: ${i.cpf}, Salário: ${i.salario}, Bonificação: ${i.calcularBonificacao()}');
    }

    for (Supervisor i in listaSupervisor) {
      print(
          'Nome: ${i.nome}, CPF: ${i.cpf}, Salário: ${i.salario}, Bonificação: ${i.calcularBonificacao()}');
    }
    // print(listaFuncionario.length);
    // print(listaGerente);
  }
}

cadastraFuncionario() {
  print('Informe o nome do funcionário:');
  String nome = stdin.readLineSync()!;
  print('Informe o cpf do funcionário:');
  String cpf = stdin.readLineSync()!;
  print('Informe o salario do funcionário:');
  double salario = double.parse(stdin.readLineSync()!);
  return Funcionario(nome: nome, cpf: cpf, salario: salario);
}

cadastraGerente() {
  print('Informe o nome do gerente:');
  String nome = stdin.readLineSync()!;
  print('Informe o cpf do gerente:');
  String cpf = stdin.readLineSync()!;
  print('Informe o salario do gerente:');
  double salario = double.parse(stdin.readLineSync()!);
  return Gerente(nome: nome, cpf: cpf, salario: salario);
}

cadastraEngenheiro() {
  print('Informe o nome do engenheiro:');
  String nome = stdin.readLineSync()!;
  print('Informe o cpf do engenheiro:');
  String cpf = stdin.readLineSync()!;
  print('Informe o salario do engenheiro:');
  double salario = double.parse(stdin.readLineSync()!);
  return Engenheiro(nome: nome, cpf: cpf, salario: salario);
}

cadastraSupervisor() {
  print('Informe o nome do supervisor:');
  String nome = stdin.readLineSync()!;
  print('Informe o cpf do supervisor:');
  String cpf = stdin.readLineSync()!;
  print('Informe o salario do superviso:');
  double salario = double.parse(stdin.readLineSync()!);
  return Supervisor(nome: nome, cpf: cpf, salario: salario);
}
