void main() {
  var numeros = List.generate(10, (index) => index);

  numeros.forEach(printNumero);

  //Expand
  var lista = [
    [1, 2],
    [3, 4],
  ];

  print('Numero: ${lista[1][0]}');
  print(lista);
  print('');
  //Juntou todos os elementos da lista em um unico elemento na listaNova
  var listaNova = lista.expand((numeros) => numeros).toList();
  print(listaNova);

  //Any
  print('');
  final listaBusca = ['Eduardo', 'Henrique', 'Cardozo'];

  if (listaBusca.any((nome) => nome == 'Eduardo')) {
    print('Tem');
  } else {
    print('Não tem');
  }

  print('');

  //Every
  //Faz a varredura na lista e retorn true or false se a condição for atendida
  final listaBusca2 = ['Rodrigo', 'João', 'José'];

  if (listaBusca2.every((nome) => nome.contains('J'))) {
    print('Todos os nomes tem J') ;
  } else {
    print('Nenhum nome tem J');
  }

  //Sort
  //Ordenar a lista
  //Ordena a propria lista (Não retorna uma nova lista)
  print('');
  
  //Ordena a lista por ordem crescente
  var listaParaOrdenacao = [25, 40, 59, 70, 90, 10, 15];
  listaParaOrdenacao.sort();
  print(listaParaOrdenacao);
  
  //Ordena a lista por ordem alfabetica
  var listaNomesOrdenacao = ['Bicicleta','Carro', 'Abelha'];
  listaNomesOrdenacao.sort();
  print(listaNomesOrdenacao);
  
  //Ordena a lista pela idade do paciente
  var listaPaciente = ['Eduardo|22', 'José|53', 'Luciani|43', 'Marcelo|60', 'Rafael|28'];

  listaPaciente.sort((paciente1, paciente2){
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    if (idadePaciente1 > idadePaciente2) {
      return 1;
    } else if(idadePaciente1 == idadePaciente2){
      return 0;
    } else {
      return -1;
    }
  });
  print('Sort com if');
  print(listaPaciente);

  listaPaciente.sort((paciente1, paciente2){
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    return idadePaciente1.compareTo(idadePaciente2);
  });

  print('Sort com compare to');
  print(listaPaciente);

}

void printNumero(Object valor) {
  print(valor);
}
