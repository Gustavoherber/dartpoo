import 'dart:io';

import 'circulo.dart';
import 'formageometrica.dart';
import 'quadrado.dart';
import 'retangulo.dart';

void main() {
  List<FormaGeometrica> listaFormas = [];
  FormaGeometrica forma;
  print('Quantas formas geométricas deseja criar?');
  int opc = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= opc; i++) {
    print(
        'Qual forma geométrica deseja criar? Forma nº$i \n1. Quadrado \n2. Retângulo \n3. Círculo \n');
    String opc = stdin.readLineSync()!;
    switch (opc) {
      case '1':
        print('Informe o lado do quadrado');
        forma = Quadrado(double.parse(stdin.readLineSync()!));
        // print(forma.calcArea());
        // print(forma.calcPerimetro());
        listaFormas.add(forma);
        break;

      case '2':
        print('Informe a base e a altura do retângulo respectivamente');
        forma = Retangulo(double.parse(stdin.readLineSync()!),
            double.parse(stdin.readLineSync()!));
        listaFormas.add(forma);
        break;

      case '3':
        print('Informe o raio do círculo');
        forma = Circulo(double.parse(stdin.readLineSync()!));
        listaFormas.add(forma);
        break;
    }
  }

  for (FormaGeometrica forma in listaFormas) {
    if (forma is Quadrado) {
      print('Lado = ${forma.lado.toStringAsFixed(2)}');
      print('Área = ${forma.calcArea().toStringAsFixed(2)}');
      print('Perímetro ${forma.calcPerimetro().toStringAsFixed(2)}');
      print('');
    } else if (forma is Retangulo) {
      print('Base = ${forma.base.toStringAsFixed(2)}');
      print('Altura = ${forma.altura.toStringAsFixed(2)}');
      print('Área = ${forma.calcArea().toStringAsFixed(2)}');
      print('Perímetro ${forma.calcPerimetro().toStringAsFixed(2)}');
      print('');
    } else if (forma is Circulo) {
      print('Raio = ${forma.raio.toStringAsFixed(2)}');
      print('Área = ${forma.calcArea().toStringAsFixed(2)}');
      print('Perímetro ${forma.calcPerimetro().toStringAsFixed(2)}');
      print('');
    }
  }
}
