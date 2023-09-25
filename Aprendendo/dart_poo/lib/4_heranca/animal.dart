// Abstract: transforma a classe em um modelo
abstract class Animal {
  String? tamanho;
  final int idade;
  int? baseIdadeHumana;
  final String nome;

  Animal({required this.idade, required this.nome});

  int recuperarIdade(){
    return idade;
  }

  int calcularIdadeHumana();
}