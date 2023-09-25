import 'joao.dart';

void main () {
  var joao = Joao();
  
  // João é um artista, cantor e dançarino
  print('''
    João:
      Habilidade: ${joao.habilidade()}
      Cantar: ${joao.cantar()}
      Dancar: ${joao.dancar()}
  ''');

  // print(joao.habilidade());
  // print(joao.cantar());
  // print(joao.dancar());
}