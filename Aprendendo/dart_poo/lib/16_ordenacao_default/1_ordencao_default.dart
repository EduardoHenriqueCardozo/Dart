

import 'package:dart_poo/16_ordenacao_default/cliente.dart';

void main (){
  var cliente1 = Cliente(nome: 'Maria Aparecida', telefone: '69993056566');
  var cliente2 = Cliente(nome: 'Eduardo Henrique', telefone: '69981399928');
  var cliente3 = Cliente(nome: 'Jose melo', telefone: '97984254211');
  var cliente4 = Cliente(nome: 'Luciani Siqueira', telefone: '69992722622');

  var lista = [cliente1, cliente2, cliente3, cliente4];
  print(lista);

  lista.sort((cliente1,cliente2) => cliente1.nome.compareTo(cliente2.nome));
  print(lista);
}