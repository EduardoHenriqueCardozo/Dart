void main(){
  final idade = 23;

  //Usar interpolação para imprimir inteiros é o mais recomendado
  print('Sua idade é: $idade');

  //Não funciona:
  //print('Sua idade é: ' + idade);

  final valor = -20;

  //Função isNegative: Verifica se o valor é negativo
  if (valor.isNegative) {
    print('É negativo! $valor');
  } else {
    print('É positivo! $valor');
  }

  final valorDouble = 10.65;

  //Função round: Arredonda o valor para o inteiro mais proximo
  print(valorDouble.round());

  //Função roundToDouble: Arredonda para o valor inteiro mais proximo mas continua sendo double
  print(valorDouble.roundToDouble());

  final valorStringCerto = '30';
  final valorStringErrado = '30a';

  //Converte o valor para inteiro
  final valorConvertido = int.parse(valorStringCerto);
  print(valorConvertido);


  //Tenta realizar a conversão para inteiro, caso não consiga retorna null
  final valorConvertido2 = int.tryParse(valorStringErrado);
  print(valorConvertido2);

  final valorCamiseta = 30.186;
  //Função toStringAsFixed: imprimi somente as casas decimais escolhidas e arredonda essas casas decimais
  print(valorCamiseta.toStringAsFixed(2));

}