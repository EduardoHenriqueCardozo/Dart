void main() {

  //Mapa é uma representação de Chave:Valor
  final paciente = <String, String>{
    'nome': 'Eduardo Henrique',
    'curso': 'Academia do Flutter',
    'idade': '22',
  };
  

  //Mapa que aceita valores nulos não instanciados
  Map<String, String>? pacienteNullSafety = null;

  //O Mapa e o valor não pode ser nulos, mas a chave pode conter valores nulos
  var pacienteNullSafety2 = <String?, String>{
    null: 'Eduardo',
  };

  //O Mapa e a chave não podem ser nulos, mas o valor pode conter valores nulos
  var pacienteNullSafety3 = <String, String?>{
    'nome': null,
  };

  //Somente será adicionado se a chave não existir
  var produtos = <String, String>{};

  //putIfAbsent
  //Adiciona uma chave e uma valor ao mapa
  //caso a chave já exista no mapa o valor não será adicionado 
  produtos.putIfAbsent('nome', () => 'Cerveja');
  produtos.putIfAbsent('nome', () => 'Picanha');
  print(produtos);
  print('');

  //update
  //Atualiza o valor vinculado a chave já existente
  //Não atualiza valores de chaves inexistentes
  produtos.update('nome', (value) => 'Picanha');
  print('Valor atualizado utilizando o update');
  print(produtos);

  //Se utilizar o ifAbsent quando for atualizar o valor
  //o valor será adicionado ao mapa
  produtos.update('preço', (value) => '10', ifAbsent: () => '100');
  print(produtos);
  print('');

  //Recuperando valor com interpolação
  print('Produto: ${produtos['nome']}');
  print('Preço: ${produtos['preço']}');
  print('');

  produtos.forEach((key, value) {
    print('Chave: $key: $value');
  });
  print('');

  //Utilizar quando precisar realizar processos assincronos
  for (var entry in produtos.entries) {
    print('Chave: ${entry.key}: ${entry.value}');
  }
  print('');

  //Faz a varredura e imprimi todas as chaves
  for (var key in produtos.keys) {
    print('Chave: $key');
  }
  print('');

  //Faz a varredura e imprimi todos os valores
  for (var values in produtos.values) {
    print('Valores: $values');
  }
  print('');

  var novoMapaProdutos = produtos.map((key, value) {
    return MapEntry(key + '_nova', value.toUpperCase());
  });
  print(novoMapaProdutos);
  print('');

  //Mapa criado que contem listas dentro das keys
  var mapa = <String, Object>{
    'nome': 'Eduardo Henrique',
    'cursos': [
      {
        'nome': 'Academia do Flutter',
        'descricao': 'Melhor curso de flutter do brasil!!!',
      },
      {
        'nome': 'Arquiteto Flutter',
        'descricao': 'Melhor curso de flutter do brasil!!!',
      }
    ]
  };

  print(mapa['nome']);
}
