String? nome;

void main() {

  // = | -= | /= | %= | >>= | ^=
  // += | *= | ~/= | <<= | &= | |=

  var numero = 1;

  print(numero);
  // numero = numero + 2
  numero += 2;
  numero -= 2;
  print(numero);

  var numero2 = 2.0;
  // numero = numero / 1
  numero2 /= 1.0;

  print(numero2);
  
  nome ??= 'Eduardo Henrique';

  // if(nome == null){
  //   nome = 'Nome invalido';
  // }

  print(nome);
}