void main() {

  // Operador ternario
  // é utilizado para verificar uma condição e retornar um valor ou outro
  final idade = 18;

  if(idade >= 18){
    print('Maior de idade');
  } else {
    print('Menor de idade');
  }

  // Estrutura
  // condição ? True : False
  final eMaiorDeIdade = (idade >= 18) ? true : false;

  print('é maior de idade: ' + eMaiorDeIdade.toString());

  //Outro exemplo
  final nome = 'mateus';

  final eEduardo = (nome == 'eduardo') ? 'Sim' : 'Não';

  print(eEduardo);
}