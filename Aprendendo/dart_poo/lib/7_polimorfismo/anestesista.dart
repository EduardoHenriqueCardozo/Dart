import 'package:dart_poo/7_polimorfismo/medico.dart';

class Anestesista extends Medico{
  @override
  void operar() {
    print('''
      Anestesista: 
        Preparar e esterilizar os equipamentos
        Anestesiar a paciente
      ''');
    
  }

}