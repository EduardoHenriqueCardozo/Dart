void main() {
  // Cascade notation/notação de cascata
  // é uma forma de preencher os atributos na instancia do objeto
  // é representado pelo .. após o nome da classe e antes do ;

  var pessoa = Pessoa()
    ..nome = 'Eduardo Henrique'
    ..idade = '23'
    ..sexo = 'Masculino';
  // pessoa.nome = 'Eduardo Henrique';
  // pessoa.idade = '23';
  // pessoa.sexo = 'Masculino';

  var mapa = Map<String, String>()
  ..putIfAbsent('nome', () => 'Eduardo Henrique')
  ..putIfAbsent('Idade', () => '23')
  ..putIfAbsent('Sexo', () => 'Masculino');

  print('''
    Pessoa:
      Nome: ${pessoa.nome}
      Idade: ${pessoa.idade}
      Sexo: ${pessoa.sexo}
  ''');
}

class Pessoa{
  String? nome;
  String? idade;
  String? sexo;
}