class Funcionario {
  String nome;
  String cpf;
  double salario;

  Funcionario({required this.nome, required this.cpf, required this.salario});

  @override
  double calcularBonificacao() {
    return salario * 0.10;
  }

  @override
  String toString() {
    return 'Funcionário nome: $nome, CPF: $cpf, salário: $salario, bonificação: ${calcularBonificacao()}';
  }
}
