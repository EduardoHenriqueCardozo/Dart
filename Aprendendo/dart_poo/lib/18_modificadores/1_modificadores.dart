import 'package:dart_poo/18_modificadores/pessoa.dart';

void main(){
  var p1 = const Pessoa(nome: 'Eduardo Henrique', idade: 23);
  var p2 = const Pessoa(nome: 'Eduardo Henrique', idade: 23);

  print(p1 == p2);
}