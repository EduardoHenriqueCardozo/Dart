import 'package:dart_poo/5_heranca_covariant/Classes/fruta.dart';

// Covariant
abstract class Mamifero{
  void comer(covariant Fruta fruta);
}