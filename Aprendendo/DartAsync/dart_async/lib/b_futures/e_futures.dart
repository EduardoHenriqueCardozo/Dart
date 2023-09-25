void main() {
  // // Exemplo 1
  // print('Levando o carro para o mecanico');

  // Future<int>(() {
  //   // função assicrona que vai fazer o orçamento da manutenção do nosso carro!
  //   return 10 ~/ 2;
  // }).then((valorOrcamento) {
  //   print('O orçamento para arrumar o carro é de $valorOrcamento');
  // }).whenComplete(() => print('Finalizando'));

  // print('Saindo da mecanica');

  // //Exemplo 2
  // print('Fui viajar');

  // Future<String>(() {
  //   // Indo para USA
  //   throw Exception('Avião caiu');
  //   return 'Macbook Comprado';
  // }).then((comprado) {
  //   print('Comprei meu macbook');
  // }).catchError((onError) {
  //   print('Deu RUIM! O avião caiu');
  // }).whenComplete(() => print('Finalizando viagem'));

  // //Exemplo 3
  // Future<int>(() {
  //   return 10 ~/ 0; // ~ (til) na divisão retorna somente o valor inteiro
  // }).then((resultado) => print('Valor calculado é: $resultado'), onError: (erro) {
  //   print('Ocorrou um erro! $erro');
  //   throw Exception('Outro erro');
  // }).catchError((error) {
  //   print('Ocorrou um erro no catch error! $error');
  // });

  // Exemplo 4
  Future<int>(() {
    throw Exception('x');
    return 10 ~/ 0; // ~ (til) na divisão retorna somente o valor inteiro
  }).then((value) => print('Valor calculado é: $value'))
  .catchError(
    (error) {
      print('Ocorrou um erro no catch error! $error');
    },
    test: (error) => error is UnsupportedError,
  ) .catchError(
    (error) {
      print('Ocorrou um erro no catch error 2! $error');
    },
    test: (error) => error is Exception,
  );
}
