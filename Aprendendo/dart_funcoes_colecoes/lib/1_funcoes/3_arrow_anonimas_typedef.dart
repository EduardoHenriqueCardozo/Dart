void main() {
  //Função Arrow
  imprimirNome('Luciani Siqueira');

  //Função Anonima
  // São funções que em sua estrutura contém somente os parametros
  var funcaoQualquer = () {
    print('Eduardo Henrique');
  };
  print(funcaoQualquer());

  //Função que recebe outra função como parametro
  chamarOutraFuncaoPorParametro((nome) {
    if (nome.isEmpty) {
      print('Nome está vazio');
    } else {
      print(nome);
    }
  });

  //TypeDef
  //Defini a função
  //é usado para simplificar codigo

  funcaoComplexa((nome, sobrenome) => 'null');
  
}

//Funções contém 3 partes
// Tipo de retorno
// Nome
// Parametros (normais, nomeados e opcionais)

//Funções Arrow
//São funções que ocupam somente uma linha e utilizam => (Arrow)
//São utilizadas em funções limpas para deixar o codigo mais limpo
int somaInteiros(int num1, int num2) => num1 + num2;
void somaInteirosVoid(int num1, int num2) => num1 + num2;
void imprimirNome(String nome) => print(nome);

//Função que recebe outra função como parametro
void chamarOutraFuncaoPorParametro(Function(String nome) funcaoQueRecebeNome) {
  var calculo = 1 + 1;
  print('Realizando calculo: $calculo');

  var nomeCompleto = '';

  funcaoQueRecebeNome(nomeCompleto);
}

//typedef
typedef FuncaoQueRecebeNome = String Function(
    String nome, String sobrenome);

void funcaoComplexa(FuncaoQueRecebeNome) {

}
