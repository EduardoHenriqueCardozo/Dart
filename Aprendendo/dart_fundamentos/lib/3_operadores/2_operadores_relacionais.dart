void main (){
  //Operaores relacionais
  // Temos 6 tipos
  // == (igualdade)
  // != (diferença)
  // > (Maior que)
  // >= (Maior igual que)
  // < (menor que)
  // <= (Menor igual que)

  final tipoPet = 'gato';
  final idade = 18;

  //Regra de negocio para tirar habilitação
  if(idade == 18){
    print('Pode tirar habilitação');
  }

  if(idade > 17){
    print('Pode tirar habilitação');
  }

  if(idade >= 18){
    print('Pode tirar habilitação');
  }

  if(tipoPet != 'Cachorro'){
    print('Desculpe mas não temos nada para o seu pet');
  }
}