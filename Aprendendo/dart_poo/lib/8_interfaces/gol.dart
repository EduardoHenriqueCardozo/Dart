import 'package:dart_poo/8_interfaces/carro.dart';

class Gol implements Carro{
  
  @override //Sobreescrita da classe superior
  int portas = 4;
  @override
  int rodas = 4;
  @override
  String motor = '2.0';

  @override
  int velocidadeMaxima(){
    return 200;
  }

}