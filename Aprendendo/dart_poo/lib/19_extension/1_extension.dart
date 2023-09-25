import 'package:dart_poo/19_extension/pessoa.dart';
import 'package:dart_poo/19_extension/pessoa_saudacao_extension.dart';

import 'saudacao_string_extension.dart';
void main() {
  var nome = 'Eduardo Henrique';

  print(nome.saudacao());

  var pessoa = Pessoa(nome: 'Eduardo');
  print(pessoa.saudacao());
}

// Extension é uma forma de modificar um codigo fonte que não tem acesso
// nesse cado foi adicionado o metodo Saudação a classe String