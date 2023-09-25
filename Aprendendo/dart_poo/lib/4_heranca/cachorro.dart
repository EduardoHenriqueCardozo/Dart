import 'package:dart_poo/4_heranca/animal.dart';

// Herança é representado pela palavra extends
// Cachorro herda a classe animal
class Cachorro extends Animal{

  Cachorro({required int idade, required String nomeCachorro}) : super(idade: idade, nome: nomeCachorro);

  @override //metadata
  int calcularIdadeHumana() {
    return idade * 7;
  }

}