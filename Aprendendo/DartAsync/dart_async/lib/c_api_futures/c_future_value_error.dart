void main() {
  print('Init Main');

  Future(
    () {},
  ); // Incompleto -> vai ser executado ainda!

  Future.value(''); // -> sucesso
  Future.error(''); // -> erro

  print('End Main');
}

Future<String> func1() {
  return Future.value('Sucesso');
}
