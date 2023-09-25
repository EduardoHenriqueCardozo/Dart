//Funções
//Toda função contém tipo, nome e parâmetros
//Funções de tipo void não retornam nenhum valor

//Função main: é uma função de nivel superior
void main(){

  final valorCalculado = somarInteiros(10, 10);
  print('A soma de dois inteiros é: $valorCalculado');
}

//Função que soma dois valores inteiros
int somarInteiros(int num1, int num2){
  print('Somando dois numeros inteiros: $num1 + $num2');
  return num1 + num2;
}