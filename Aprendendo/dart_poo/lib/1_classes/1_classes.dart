import 'package:dart_poo/1_classes/camiseta.dart';
void main(){

  // Instancia do objeto camiseta
  var camisetaNike = Camiseta();
  
  camisetaNike.cor = 'Preta';
  camisetaNike.marca = 'Nike';
  camisetaNike.tamanho = 'GG';

  // Print que imprimi varias linhas
  // é representado pelas ''' '''
  print('''
    Camiseta: 
      Cor: ${camisetaNike.cor}
      Marca: ${camisetaNike.marca}
      Tamanho: ${camisetaNike.tamanho}
      Tipo de Lavagem: ${camisetaNike.tipoDeLavagem()}
    ''');

  var camisetaAdidas = Camiseta();

  camisetaAdidas.cor = 'Azul';
  camisetaAdidas.tamanho = 'GG';
  camisetaAdidas.marca = 'Addidas';

  print('''
    Camiseta:
      Cor: ${camisetaAdidas.cor}
      Marca: ${camisetaAdidas.marca}
      Tamanho: ${camisetaAdidas.tamanho}
      Tipo de Lavagem: ${camisetaAdidas.tipoDeLavagem()}
    ''');

  // Atributos e métodos estáticos não precisam ser instaciados para serem invocados
  print(Camiseta.nome);
  print(Camiseta.recuperarNome());

}