// É uma classe abstrata
// pois tem métodos implementados
abstract class CarroClasseAbstrata{
  void velocidadeMaxima(){

  }
}

// É uma interface
// pois não tem nenhum método implementado!!!
abstract class Carro{

  // O modificador abstract 
  abstract int portas;
  abstract int rodas;
  abstract String motor;

  int velocidadeMaxima();
}