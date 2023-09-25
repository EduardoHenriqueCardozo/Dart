// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(){
  var frutas = [
    Fruta('Banana'),
    Fruta('Abacaxi'),
    Fruta('Laranja'),
  ];
  
  var frutasMap = [
    {'nome': 'Banana'},
    {'nome': 'Abacaxi'},
    {'nome': 'Laranja'},
  ];
  // List<Suco> sucos = [];
  // for (var fruta in frutas) {
  //   final suco = Suco(sabor: fruta.nome);
  //   sucos.add(suco);    
  // }

  var sucos = frutas.map((fruta) {
    return Suco(sabor: fruta.nome);
  }).toList();

  var sucos2 = frutasMap.map((frutaMap) {
    return Suco(sabor: frutaMap['nome'] ?? 'Sem sabor');
  });

  print(sucos);
  print(sucos2);

}

class Suco {
  String sabor;
  Suco({
    required this.sabor,
  });

  @override
  String toString() => 'Suco sabor: $sabor';
}

class Fruta {
  String nome;
  Fruta(
    this.nome,
  );
}
