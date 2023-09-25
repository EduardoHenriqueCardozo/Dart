void main (){
  var nomeCompleto = 'eduardo';
  print(nomeCompleto);

  nomeCompleto = 'Eduardo Henrique';
  print(nomeCompleto);

  // Variaveis finais:
  // Não podem ser alteradas depois de inicializadas (imutáveis)
  // São definidas do programa em tempo de execução (Runtime)
  // Utilize sem moderação
  // Pode ser atribuida valor somente uma vez
  final nomeCompletoFinal = 'Eduardo Henrique';
  final nomeCompletoFinal2 = nomeCompleto;

  // Variaveis const
  // Não podem ser alteradas depois de inicializadas (imutáveis)
  // São definidas no programa em tempo de COMPILAÇÃO!!!
  // Não podem receber valores de outras váriaveis a não ser que essas variáveis
  // forem const também
  // Utilize sem moderação
  const nomeCompletoConst = 'Eduardo Henrique';
  const nomeCompletoConst2 = nomeCompletoConst;
}