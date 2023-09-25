void main () {
  //Operadores Lógicos
  // && (E)
  // || (OU)
  // ! (NÃO)

  final nome = 'Eduardo';
  final sexo = 'M';
  final idade = 18;

  // if(sexo == 'M'){
  //   if(idade >= 18) {
  //     print('Pode Entrar!!');
  //   } else {
  //     print('Não pode entrar');
  //   }
  // } else {
  //   print('Não pode entrar');
  // }

  // Operador && (E)
  //Ambas as condições devem ser verdadeiras
  if(sexo == 'M' && idade >= 18){
    print('Pode entrar');
  } else {
    print('Não pode entrar');
  }

  // Operador || (OU)
  // Somente uma das condições precisa ser verdadeira
  if(sexo == 'M' || idade >= 18){
    print('Pode entrar');
  } else {
    print('Não pode entrar');
  }

  //Operador ! (NÃO)
  //Inverte o resultado da condição
  if(!(nome == 'Eduardo')){
    print('True');
  } else {
    print('False');
  }

}