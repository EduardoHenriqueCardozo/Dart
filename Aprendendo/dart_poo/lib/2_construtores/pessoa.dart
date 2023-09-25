class Pessoa{
  String? nome;
  int? idade;
  String? sexo;

  // Construtores Default
  // O Dart já cria o construtor automaticamente
  // Pessoa();
  // Com os construtores podemos obrigar os objetos a terem os atributos preenchidos em forma de parametros

  Pessoa({required this.nome, required this.idade, required this.sexo});

  // Construtores Nomeado
  // Em caso de não querer passar todos os atributos, recomenda usar o construtor nomeado
  // Permite passar atributos especificos
  Pessoa.semNome(this.idade, this.sexo);

  Pessoa.vazia();

  // Construtores Factory
  // São utilizados quando é necessario implementar alguma regra antes da instacia do objeto
  factory Pessoa.fabrica(String nomeConstrutor){
    var nome = nomeConstrutor + '_Factory';
    var pessoa = Pessoa.vazia();
    pessoa.nome = nome;
    return pessoa;
  }
}