void main() {
  List<int> numeros = [1,2,3];
  numeros.add(4);

  Map<String, int> mapa = {};  

  final caixa = Caixa<Bola>();
  caixa.adicionar(Bola());
  Bola? itemCaixa = caixa.getItems();

  final caixaBoneca = Caixa<Boneca>();
  caixaBoneca.adicionar(Boneca());
  Boneca? itemBoneca = caixaBoneca.getItems();
}

class Caixa<I>{

  dynamic _item;

  void adicionar(I item) {
    _item = item;
  }

  I? getItems(){
    return _item;
  }
}

class Bola{

}

class Boneca{

}

class Telefone{

}