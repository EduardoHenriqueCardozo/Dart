void main() {
  //Parametros obrigatórios por default
  //Tem que ser preenchidos
  //Os valores devem ser preenchidos da ordem em que foram criados
  print('A soma de 10 + 10 é: ${somaInteiros(10, 10)}');
  
  //Parametros Nomeados
  //São nullables por default
  //Podem ser promovidos para não nulos com checagem de null
  //Podem ser preenchidos em qualquer ordem

  print('A soma de 5.5 + 5.5 é: ${somaDouble(num1: 5.4, num2: 5.4)}');

  //Parametros Required
  //Devem ser obrigatoriamentes preenchidos
  //Poder ser preenchidos em qualquer ordem
  //Os valores podem se preenchidos com nulos

  print('Required: A soma de 10.2 + 10.2 é: ${somaDoubleRequired(num1: null, num2: 10.2)}');

  //Parametros default com valor padrão
  //Parametros default que caso não seja preenchidos retornam o valor padrão

  print('Chamada de função com parametros default e valor padrão: ${somaDoubleComDefault()}');
  print('Chamada de função com parametros default e valor padrão: ${somaDoubleComDefault(num1: 10)}');

  //Parametro opcional
  //Podem ser passados ou não

  print('A soma dos dois inteiros é: ${somaIntOpcional()}');
  print('A soma dos dois inteiros é: ${somaIntOpcional(10)}');
  print('A soma dos dois inteiros é: ${somaIntOpcional(10,20)}');

}

int somaInteiros(int num1, int num2){
  return num1 + num2;
}

double somaDouble({double? num1, double? num2}){
  if (num1 != null && num2 != null) {
    return num1 + num2;
  } else {
    return 0.0;
  }
}

double somaDoubleRequired({double? num1, required double num2}){
  return num1 ??= 0 + num2;
}

double somaDoubleComDefault({double num1 = 0, num2 = 0}){
  return num1 + num2;
}

int somaIntOpcional([int num1 = 0, int num2 = 0]){
  return num1 + num2;
}