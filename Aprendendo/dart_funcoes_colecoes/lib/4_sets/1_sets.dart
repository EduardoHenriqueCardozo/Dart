void main(){
  var numerosLista = <int?>[];

  numerosLista.add(1);
  numerosLista.add(2);
  numerosLista.add(3);
  numerosLista.add(3);
  numerosLista.add(3);
  numerosLista.add(4);
  numerosLista.add(null);

  print(numerosLista);

  //Utilizar o set quando não quiser itens repetidos dentro da lista
  //Não permite valores duplicados
  
  var numerosSet = <int?>{};
  numerosSet.add(1);
  numerosSet.add(2);
  numerosSet.add(3);
  numerosSet.add(3);
  numerosSet.add(null);
  print(numerosSet);

  //.toSet
  //Aplica a regra de não duplicado a numeros lista utilizando o set
  print('Imprimindo usando o .toSet()');
  print(numerosLista.toSet());

  // Os sets possuem os mesmos iterables que as listas
  numerosSet.forEach(print);

  var numeros1 = {1,2,3,4,5,6};
  var numeros2 = {1,3,4,7};

  // .diference
  //Iterable que mostra os elementos diferentes entre duas listas selecionadas
  print('');
  print('Imprimindo usando o .diference()');
  print(numeros1.difference(numeros2));
  print(numeros2.difference(numeros1));

  // .union
  //Juntas as duas listas e não repete os elementos iguais
  print('');
  print('Imprimindo utilizando o .union');
  print(numeros1.union(numeros2));

  // .intersection
  //Imprimi os numeros que se repetem nas duas listas
  print('');
  print('Imprimindo utilizando o intersection');
  print(numeros1.intersection(numeros2));

  //Imprimi os nomes que são iguais nas duas listas
  var nomes1 = {'Eduardo', 'Henrique', 'Cardozo', 'Varjão'};
  var nomes2 = {'Luciani', 'Siqueira', 'Cardozo', 'Varjão'};

  print(nomes1.intersection(nomes2));

  //.lookup
  //Realiza uma busca na lista e retorna o valor desejado ou null(caso não encontre)
  print('');
  print(numeros1.lookup(1));
  print(nomes1.lookup('Eduardo'));
}