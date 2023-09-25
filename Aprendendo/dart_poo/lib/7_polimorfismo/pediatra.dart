import 'package:dart_poo/7_polimorfismo/medico.dart';

class Pediatra extends Medico{
  @override
  void operar() {
    print('''
      Pediatra:
        Examinar a criança no pos parto.
      ''');
  }

}