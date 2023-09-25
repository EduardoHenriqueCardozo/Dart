void main(){

  var cor = Cores.vermelho;

  if (cor == Cores.vermelho) {
    print('Vermelho');
  }

  print(Cores.azul.name);

  var corAzul215 = Cores.values.byName('azul');
  print(corAzul215);

  var coresMap = Cores.values.asMap();
  print(coresMap);

  var coresNameMap = Cores.values.asNameMap();
  print(coresNameMap);

  var corAzulPeloMap = coresNameMap['azul'];
  print(corAzulPeloMap);

  var corBranco = coresNameMap['branco'];
  print(corBranco);

}

enum Cores{
  azul, vermelho, amarelo, verde, preto
}