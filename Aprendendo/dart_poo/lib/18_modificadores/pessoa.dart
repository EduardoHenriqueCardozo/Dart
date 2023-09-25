// ignore_for_file: public_member_api_docs, sort_constructors_first
class Pessoa {
  // Operador final não permite o valor atribuido a variavel ser trocado
  final String nome;
  final int idade;

  const Pessoa({
    required this.nome,
    required this.idade,
  });
}
