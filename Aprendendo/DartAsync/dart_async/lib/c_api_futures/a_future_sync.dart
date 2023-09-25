void main(){

  print('Iniciando main');
  Future<String>.sync(() {
    print('Função Future Executada');
    return 'Resultado Future';
  }).then(print);
  print('Finalizando main');

}