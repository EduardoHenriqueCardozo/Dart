import 'package:dart_poo/7_polimorfismo/medico.dart';

class Obstreta extends Medico{
  @override
  void operar() {
    print('''
      Obstreta: 
        Preparar o paciente
        Nascimento do bebe 
      ''');
  }

}