main() async {
  print('Inicio Main');

  final nomes = ['Eduardo', 'Luciani', 'José', 'Maria'];

  // não utilizar 
  // nomes.forEach(tratarSaudacao);

  // Recomendado utilizar For In
  // for (var nome in nomes) {
  //   await tratarSaudacao(nome);
  // }

  // await Future.forEach(nomes, (nome) async {
  //   await tratarSaudacao(nome);
  // });

  final nomesFutures = nomes.map((nome) => saudacao(nome),).toList();

  final nomesProcessados = await Future.wait(nomesFutures);

  print(nomesProcessados);

  print('Fim Main');
}

Future<void> tratarSaudacao(String nome) async {
  final saudacaoNome = await saudacao(nome);
  print(saudacaoNome);
}

Future<String> saudacao(String nome) async {
  print('Inicio Saudação $nome');
  return Future.delayed(Duration(seconds: 1), () {
    print('Fim saudação nome $nome');
    return 'Olá $nome';
  });
}
