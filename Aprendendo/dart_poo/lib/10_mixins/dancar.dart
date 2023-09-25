import 'artista.dart';

mixin Dancar on Artista{

  String dancar() {
    return 'Dança forro';
  }

  @override // Sobreescreveu a habilidade da classe artista
  String habilidade(){
    return 'Dançar';
  }
}