class EnviarEmail {

  // Callable class
  // é uma forma de chamar um metodo somente pelo nome da classe
  // para fazer isso é necessario nomear um metodo com a palavra call

  bool call(String email){
    print('Chamando método call');
    return enviar(email);
  }

  bool enviar(String email){
    print('Chamando método enviar');
    return true;
  }
}