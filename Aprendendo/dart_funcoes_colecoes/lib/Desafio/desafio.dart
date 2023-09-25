void main() {
  
  //! Detalhe sobre a String
  //! A String é composta por 3 campos (Nome|Idade|Sexo)
  final pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Feminino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  //! Baseado na lista acima.
  //! 1 - Remova os pacientes duplicados e apresente a nova lista

  var listaPessoa = pessoas.toSet();
  print(listaPessoa);

  print('');
  
  //! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas

  int masculino = 0;
  var listaMasculinos = [];

  int feminino = 0;
  var listaFemininos = [];
  

  for (var pessoa in listaPessoa) {    
    var novaPessoa = [];
    novaPessoa = pessoa.split('|');

    if (novaPessoa[2].toLowerCase() == 'masculino') {
      masculino ++;
      listaMasculinos.add(novaPessoa[0]);
    } else {
      feminino ++;
      listaFemininos.add(novaPessoa[0]);
    }
  }

  print('A quatidade de pessoas do sexo Masculino é: $masculino');
  listaMasculinos.forEach((pessoa) => print(pessoa));

  print('');

  print('A quatidade de pessoas do sexo Feminino é: $feminino');
  print(listaFemininos);

  print('');

  //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome

  var novaListaPessoa = [];

  for (var pessoa in listaPessoa) {
    var novaPessoa = pessoa.split('|');
    int idadePessoa = int.parse(novaPessoa[1]);
    if (idadePessoa > 18) {
      novaListaPessoa.add(novaPessoa[0]);
    }    
  }
  print('Lista de pessoas maiores de 18 anos: $novaListaPessoa');
  print('');

  //! 4 - Encontre a pessoa mais velha e apresente o nome dela.

  var pessoaMaisVelha = [];

  for (var pessoa in listaPessoa) {
    var novaPessoa = pessoa.split('|');
    var idadePessoa = int.parse(novaPessoa[1]);    
  }



  print(pessoaMaisVelha);

}