String? nomeCompleto;

void main() {

  nomeCompleto = 'irineu';

  // Operador ? verifica se a variavel é nula
  // se for nula, atribui null para a variavel e utiliza o operador ?? para retornar 'Nome não preenchido'
  // se for não nula, imprimi o valor atribuido.

  print(nomeCompleto?.toUpperCase() ?? 'Nome não preenchido'.toUpperCase());

}