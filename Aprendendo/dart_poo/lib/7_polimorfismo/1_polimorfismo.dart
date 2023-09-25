import 'package:dart_poo/7_polimorfismo/anestesista.dart';
import 'package:dart_poo/7_polimorfismo/medico.dart';
import 'package:dart_poo/7_polimorfismo/obstreta.dart';
import 'package:dart_poo/7_polimorfismo/pediatra.dart';
import 'package:dart_poo/7_polimorfismo/residente_anestesia.dart';

void main() {
  // Parto!!!
  var medicos = <Medico>[
    ResidenteAnestesista(),
    // Anestesista(),
    Obstreta(),
    Pediatra(),
  ];

  // Realizar um parto
  for (var medico in medicos) {
    medico.operar();
  }
}
