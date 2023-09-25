// Reassistir no futuro para entender melhor
// ignore_for_file: public_member_api_docs, sort_constructors_first
void main() {
  final nomes = ['Eduardo', 'Henrique', 'Cardozo', 'Varjão'];

  final pessoasAntigo = nomes.map((nome) => Pessoa(nome)).toList();

  // final pessoas = nomes.map<Pessoa>(Pessoa.nome).toList();
  final pessoas = nomes.map<Pessoa>(Pessoa.new).toList();

  for (var pessoa in pessoas) {
    print('Olá ${pessoa.nome}');
  }

  funcaoQualquer(Pessoa.new);
}

void funcaoQualquer(void Function(String) funcao){
  funcao('Eduardo');
}

class Pessoa {
  String nome;
  Pessoa(
    this.nome,
  );
  Pessoa.nome(
    this.nome,
  );
}
