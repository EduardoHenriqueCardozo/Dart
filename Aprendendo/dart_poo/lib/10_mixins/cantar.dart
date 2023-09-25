import 'artista.dart';

abstract class Cantar {
  String cantar(){
    return 'Canta Rock';
  }

  @override
  String habilidade(){
    return 'Cantar';
  }
}