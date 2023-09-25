import 'package:dart_poo/4_heranca/animal.dart';

class Gato extends Animal{
  Gato({required int idadeGato, required String nomeGato}) : super(idade: idadeGato, nome: nomeGato);

  @override
  int calcularIdadeHumana() {    
    return idade * 15;
  }

}