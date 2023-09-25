String? nome;

void main() {
  //nome = 'Guilherme ';
  var sobrenome = 'Henrique';

  // Operador ?? verifica se a variavel é nula
  // caso seja nula atribui o valor 'Eduardo'
  var nomeCompleto = (nome ?? 'Eduardo ') + sobrenome;

  print(nomeCompleto);
}