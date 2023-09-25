import 'package:dart_poo/2_construtores/pessoa.dart';

void main(){

  // O objeto pessoa deve ser instanciado com os parametros da classe Pessoa
  var pessoa = Pessoa(nome: 'Eduardo Henrique', idade: 22, sexo: 'Masculino');
  print(pessoa.nome);

  // Instanciando um objeto com um construtos nomeado
  var pessoaNomeado = Pessoa.semNome(22, 'Feminino');
  print(pessoaNomeado.sexo);

  // Instanciando com Contrutores Factory
  var pessoaFabrica = Pessoa.fabrica('Eduardo Henrique');
  print(pessoaFabrica.nome);
}