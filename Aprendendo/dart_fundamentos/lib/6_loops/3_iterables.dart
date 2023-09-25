void main(){

  var numeros = List.generate(10, (index) => index);

  // for (var i = 0; i < numeros.length; i++) {
  //   if (i == 5) {
  //     continue;
  //   }
  //   print(numeros[i]);
  // }

  //iterable
  //São varias funções que podem ser utilizadas para filtrar/selecionar
  //Realizer ações encadeadas
  //Não utilizar em requisições assincronas
  numeros
    .where((numero) => numero != 5)
    .forEach((numero) => print(numero));

  print('Imprimindo numeros com takeWhile');
  final numeroAte6 = numeros
    .takeWhile((numero) => numero < 7) //Cria uma iterable até o numero 6
    .where((numero) => numero != 5) //Seleciona o numero 5
    .toList(); //Tranforma em uma lista
  print(numeroAte6);

  final numeroRemoverAte5 = numeros
  .skipWhile((numero) => numero < 6);
  print(numeroRemoverAte5);

  var nomes = ['Eduardo', 'Henrique', 'Cardozo', 'Varjão'];
  var nomesSkip = nomes
  .skipWhile((nome) {
    if (nome != 'Cardozo') {
      return true;
    } else {
      return false;
    }
  }) //Pula todos os nomes enquanto for diferente de 'Cardozo'
  .toList();
  print(nomesSkip);

  //Iterable map
  //Adiciona a string 'Numero é' a todos os elementos da lista
  var numerosStrList = numeros.map((numero){
    return 'numero é: $numero';
  })
  .toList();
  print(numerosStrList);

  //Iterable Map
  //Mapeia os elementos da lista e permitir realizar interações com eles
  var numerosList10 = numeros.map((numero){
    return numero + 10;
  })
  .toList();
  print(numerosList10);

  //Iterable Reverse
  //Inverte os elementos da lista
  var nomesRevertidos = nomes
    .reversed
    .toList();
  print(nomesRevertidos);
}