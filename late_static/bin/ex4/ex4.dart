class Colaborador {
  late String nome;
  late int identificador;
  static int contador = 1;

  Colaborador() {
    identificador = contador++;
  }
}

void main() {
  Colaborador colaborador1 = Colaborador();

  Colaborador colaborador2 = Colaborador();

  print(colaborador1.identificador);
  print(colaborador2.identificador);
}
