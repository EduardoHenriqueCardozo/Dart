void main(){

  final nome = metodoAssincronoSemAsync();
  final nome2 = metodoAssincrono();
  print(nome2);

  nome.then(print).catchError(print);

  metodoAssincronoVoid().whenComplete(() => print('Finalizou o metodo Assincrono Void'));

}

Future<String> metodoAssincronoSemAsync(){
  return Future.value('Eduardo Henrique');
}

Future<String> metodoAssincrono() async {
  return 'Eduardo Henrique';
}

Future<void> metodoAssincronoVoid() async{
  
}