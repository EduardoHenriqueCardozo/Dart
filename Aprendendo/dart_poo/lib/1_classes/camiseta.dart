// As Classes são composta de caracteristicas e comportamentos
// class é uma palavra reservada para classes

// MODIFICADORES DE ACESSO
// no dart existem o modificadores de acesso publicos(public) e privado(private)
// privado é representado pelo _ (underline) antes do nome da variavel
// podem ser privados: classes, atributos e métodos

class Camiseta{
  // As variaveis dentro da classes são definidos como ATRIBUTOS
  // Atributos são as caracteristicas de uma classe
  String? tamanho;
  String? _cor;
  String? marca;

  String? get cor => _cor;
  set cor(String? cor){
    if(cor =='Verde'){
      throw Exception('Não pode ser verde');
    }
  }

  // Atributos estáticos/Atributos de classe
  // são atributos que são atribuidos a classe e não a objetos
  // Devem ser instanciados como const para evitar que sejam mudados(Boa pratica)
  static const String nome = 'Camiseta';

  // Funções dentro das classes são definidos como MéTODOS
  // MÉTODOS são as ações que a classes realiza
  String tipoDeLavagem(){
    if (marca == 'Nike') {
      return 'Não pode lavar na maquina';
    } else {
      return 'Pode lavar na maquina';
    }
  }

  // Métodos de classe
  // são métodos que são atribuidos a classe e não a objetos
  static String recuperarNome() => nome;
}