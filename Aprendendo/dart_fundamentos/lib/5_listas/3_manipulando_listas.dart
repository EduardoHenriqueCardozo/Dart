void main() {

  final numeros = [1, 2, 3, 4];
  print(numeros);
  
  // Adiciona valores ao final da lista
  numeros.add(5);
  print('Adicionado numero 5 ao final da lista');
  print(numeros);

  //Todo indice de lista começa no 0
  //                  0          1          2          3
  final nomes = ['Eduardo', 'Henrique', 'Cardozo', 'Varjão'];
  print('Lista Nomes criada');
  print(nomes);
    //Imprimi o item que está na posição solicitada
  print('Print do valor que está na posição 1 do indice: ' + nomes[1]);

  //            4
  nomes.add('Luciani');
  print('Adicionado Varjão a lista');
  //Imprimi o item que está na posição 2 do indice
  print(nomes[2]);
  
  // Adiciona varios itens a lista
  nomes.addAll(['Eduardo2', 'Henrique2', 'Cardozo 3']);
  print('Adicionado Eduardo2, Henrique2 e Cardozo 3 a lista');
  print(nomes);
  
  // Adiciona o item na posição indicada
  nomes.insert(2, 'Maria');
  print('Maria Adicionada a posição 2 do indice');
  print(nomes);

  // Remove itens da lista
  nomes.remove('Cardozo 3');
  print('Removendo Cardozo 3 da lista');
  print(nomes);

  //Remove aonde for igual o solicitado
  nomes.removeWhere((nome){
    print('Procurando no nome: $nome');
    if(nome == 'Eduardo2'){
      return true;
    } else {
      return false;
    }
  });
  print(nomes);
  
  //Imprimi o tamanho total da lista
  print(nomes.length);

  //Imprimi o primeiro valor da lista
  print(nomes.first);

  //Imprimi o ultimo valor da lista
  print(nomes.last);

  var primeiroNome = nomes.firstWhere((nome) => nome == 'Henrique2');
  print(primeiroNome);

  //Cria uma lista de numeros
  final numerosGerados = List.generate(10, (index) => index + 1);
  print(numerosGerados);

  //Cria uma lista de strings
  final stringGerados = List.generate(5, (index) => 'Indice ${index + 1}');
  print(stringGerados);

  //Cria uma lista repetida
  final repeticoes = List.filled(7, 'Adedonha');
  print(repeticoes);

  //Soma valores de uma lista
  final numerosGeradosParaCalculo = List.generate(100, (index) => index + 1);
  var soma = numerosGeradosParaCalculo.fold<int>(0, (previousValue, numero) => previousValue = previousValue + numero);
  print(soma);

  // Spread Operator (...)
  // Adiciona uma lista a outra durante a criação
  var listaNumerosSpread = [4, 5, 6];

  var listaNumeroSpreadB = [1, 2, 3, ...listaNumerosSpread];
  print(listaNumeroSpreadB);

  // Collection if
  // Adiciona um item a lista caso cumpra a condição imposta
  var promocaoAtiva = true;

  var produtos = [
    'Cerveja',
    'Refrigerante',
    if(promocaoAtiva) 'Suco de laranja'
  ];
  print(produtos);

  //Collection For
  //Adiciona caracteres durante a criação da lista
  var listaInteiros = [1, 2, 3];
  var listaString = [
    '#0',
    for(var i in listaInteiros) '#$i'
    ];
  print(listaInteiros);
  print(listaString);

  //Troca o separador da lista
  var separador = listaString.join(' -> ');
  print(separador);
}