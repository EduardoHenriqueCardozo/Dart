void main (){
  var lista = ['Eduardo'];
  print(lista);

  funcao(lista);
  print(lista);
}


void funcao(List<String> nomes){
  nomes.add('Henrique');
}