class Aluno {
  late String nome;
  late int idade;
  late double altura;

  // Aluno(this.nome, this.idade, this.altura);
}

void main(List<String> args) {
  Aluno aluno = Aluno();
  aluno.nome = 'Gustavo';
  aluno.idade = 28;
  aluno.altura = 1.91;
  print(aluno.nome);
  print(aluno.idade);
  print(aluno.altura);
}
