import 'package:dart_poo/4_heranca/cachorro.dart';
import 'package:dart_poo/4_heranca/gato.dart';

void main(){
  var cachorro = Cachorro(idade: 10, nomeCachorro: 'Marley');
  cachorro.tamanho = 'Pequeno';
  print(cachorro.calcularIdadeHumana());
  print(cachorro.recuperarIdade());

  print('''
    Cachorro:
      Tamanho: ${cachorro.tamanho}
      Idade: ${cachorro.idade}
      Idade Humana: ${cachorro.calcularIdadeHumana()}
  ''');

  var gato = Gato(idadeGato: 10, nomeGato: 'Jubiley');
  gato.tamanho = 'Médio';

  print('''
    Gato:
      Tamanho: ${gato.tamanho}
      Idade: ${gato.idade}
      Idade Humana: ${gato.calcularIdadeHumana()}
    ''');

}