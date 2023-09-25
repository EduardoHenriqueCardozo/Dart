Future<void> main() async {
  print('Inicio Main');

  try {
    final id = await buscarId();
    final nome = await buscarNome(id);

    print('O nome é: $nome');

    print('Fim Main');
  } catch (e) {
    print('Aconteceu um erro');
  }
}

Future<int> buscarId() async => 80;
Future<String> buscarNome(int id) async {
  throw Exception();
  // return 'Eduardo Henrique ($id)';
}
