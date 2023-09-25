void main(){

  var numeros = List.generate(10, (index) => index);
  var nomes = ['Eduardo', 'Marcelo', 'Rodrigo', 'Luciani', 'José'];

  //For
  //Loop para imprimir numeros usando for
  print('Imprimindo numeros com for:');
  for(var i = 0; i < numeros.length; i++){
    print(numeros[i]);
  }

  //Loop para imprimir nomes usando for
  print('Imprimindo nomes com for:');
  for (var i = 0; i < nomes.length; i++) {
    print(nomes[i]);
  }

  //For In
  print('Imprimindo numeros com For In');
  for (var numero in numeros) {
    print(numero);
  }

  print('Imprimindo nomes com For In');
  for (var nome in nomes) {
    print(nome);
  }

  print('Imprimindo utilizando for e break');
  for (var i = 0; i < nomes.length; i++) {
    print(nomes[i]);
    if (nomes[i] == 'Marcelo') {
      break;
    }
  }

  print('Imprimindo utilizando for in e break');
  for (var nome in nomes) {
    print(nome);
    if (nome == 'Rodrigo') {
      break;
    }
  }

  print('Imprimindo com for e continue');
  for (var i = 0; i < nomes.length; i++) {
    if (i == 1 || i == 3) {
      continue;
    }
    print(nomes[i]);
  }
}