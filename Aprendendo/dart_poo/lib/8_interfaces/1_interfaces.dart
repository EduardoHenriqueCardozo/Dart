import 'package:dart_poo/8_interfaces/uno.dart';
import 'carro.dart';
import 'gol.dart';

void main() {
  var uno = Uno();
  var gol = Gol();

  // print(uno.velocidadeMaxima());
  // print(gol.velocidadeMaxima());

  printarDadosDoCarro(gol);
  printarDadosDoCarro(uno);

}

void printarDadosDoCarro(Carro carro) {
  print('''
    Carro: 
      Tipo: ${carro.runtimeType}
      Portas: ${carro.portas}
      Rodas: ${carro.rodas}
      Motor: ${carro.motor}
      Velocidade Máxima: ${carro.velocidadeMaxima()}
  ''');
}