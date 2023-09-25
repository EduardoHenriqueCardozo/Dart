void main() {
  
  //While
  //Verifica a condição e então executa o código
  var numero = 0;
  print('Imprimindo utilizando o while convencional');
  while (numero < 10) {
    print(numero);
    numero++;
  }

  //Do While
  //Executa o codigo uma vez e depois verifica a condição
  var numero2 = 10;
  print('Imprimindo utilizando o do while');
  do {
    print(numero2);
    numero2--;
  } while (numero2 >= 0);
}