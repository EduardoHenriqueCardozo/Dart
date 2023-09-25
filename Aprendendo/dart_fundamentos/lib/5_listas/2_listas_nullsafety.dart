void main() {
  // ? nullable (Aceita nulo)
  // sem nada (padrão) = non null (Não aceita nulo)

  // Lista não pode ser iniciada com valores nulos
  var listaIniciadaSemNulos = [];

  // Lista pode ser iniciada com valores nulos (?)
  List<String>? listaIniciadaComNulos = null;

  // Lista não pode receber itens nulos
  var listaNaoRecebeItensNulos = ['Eduardo'];

  // Lista pode receber itens nulos (?)
  List<String?> listaRecebeItensNulos = ['Henrique', null, 'Henrique'];
  var listaRecebeItensNulos2 = <String?>['Marcelo', null, 'Varjão'];

  //Lista pode ser iniciada nula e pode receber itens nulos
  List<String?>? listaIniciadaNulaRecebeItensNulos = ['Luciani', null, 'José'];

}