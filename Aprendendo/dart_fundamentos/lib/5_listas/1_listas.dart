void main() {
  //Declarção normal (não recomendada)
  // List<tipoDaLista> nomeDaLista = [valoresDaLista]
  List<int> listNumeros = [1, 2, 3];

  //Declaração recomendada
  var listNome = ['Eduardo', 'Henrique', 'Cardozo'];

  //Lista nula incorreta
  List<int> listSemDados = [];

  //Lista nula criada em forma dynamic (incorreto)
  var listSemDados1 = [];

  //Lista nula criada de forma correta
  var listSemDados2 = <int>[];
}