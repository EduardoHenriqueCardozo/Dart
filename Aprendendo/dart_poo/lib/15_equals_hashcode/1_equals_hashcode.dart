import 'package:dart_poo/14_assignment_operator/1_assignment_operator.dart';
import 'package:dart_poo/15_equals_hashcode/pessoa.dart';

void main () {
  
  var p1 = Pessoa(nome: 'Eduardo Henrique', idade: '23');
  var p2 = Pessoa(nome: 'Eduardo Henrique', idade: '23');

  // p2 = p1;

  print(p1.hashCode);
  print(p2.hashCode);

  if (p1 == p2) {
    print('é igual');
  } else {
    print('Não é igual');    
  }

}

/**
 * nome ='Rodrigo'
 * nome2 = 'Rodrigo'
 */