import 'carro.dart';
import 'gol.dart';
import 'uno.dart';

// Variaveis de tipo superior e atributos de classe
// não são auto promovidas para o tipo checado!!!

Carro golCarro2 = Gol();

void main() {
  var uno = Uno();
  var gol = Gol();

  Carro golCarro = Gol();

  // Quando checamos se a variavel é (is) de um tipo
  // Caso ela seja o dart vai automaticamente converter
  // essa instancia para a classe do tipo!!! 
  if(golCarro is Gol){
    golCarro.tipoDeRodas();
  }

  // var tipoDeRodas = (uno as Gol).tipoDeRodas();
  // print('Tipo de rodas: $tipoDeRodas');

  // (golCarro as Gol).tipoDeRodas();

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
      Tipo de Rodas: ${carro is Gol ? carro.tipoDeRodas() : 'Não disponivel'}
  ''');
}