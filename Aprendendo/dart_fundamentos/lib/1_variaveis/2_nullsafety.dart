//Variaveis se nivel superior precisam ser inicializadas na sua criação
//Não é permitido:
//String nomeCompletoSuperior;

//String nomeCompletoSuperior = 'Eduardo';
String? nomeCompletoSuperiorOpc; //Variavel pode ser nula

void main (){

  //Variaveis locais não precisam ser inicializadas de cara porem
  //podem ser criadas sem valor e depois ser atribuido um valor
  String nomeCompleto;
  String? nomeCompletoOpc; //Variavel pode ser nula

  nomeCompleto = 'Eduardo Henrique';

  //Variaveis locais que são nulas(nullable) por padrão
  //Se for atribuido um valor a ela, automaticamente elas são
  //promovidas a não nulo (non-null)
  nomeCompletoOpc = '';

  //Variaveis de nivel superior NUNCA são promovidas para não nulo (non-null)
  nomeCompletoSuperiorOpc = '';
  

  //Operador ! força a variavel a ser nula e executa o codigo.
  print(nomeCompleto!.length);
}