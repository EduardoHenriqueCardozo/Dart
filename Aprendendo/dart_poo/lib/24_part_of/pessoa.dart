import 'package:dart_poo/24_part_of/cpf.dart';
import 'package:dart_poo/24_part_of/telefone.dart';

part 'endereco.dart';

class Pessoa{
  String? nome;

  _Endereco endereco = _Endereco();
  CPF cpf = CPF();

  Telefone? telefone;
}