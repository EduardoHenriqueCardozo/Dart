// Imports
// São utilizados para utilizar funções de outros arquivos

// Ao importar um arquivo pode-se definir um apelido para evitar conflitos de nomes
// utiliza a estrutura 'as APELIDO'
import 'somas/soma.dart' as soma; 
import 'nova_soma/soma.dart' as nova_soma;

void main(){

  var totalDoubles = soma.somaDoubles(20.1 , 10.1);
  print('Soma de doubles: $totalDoubles');

  var totalInteiros = nova_soma.somaInteiros(1, 1);
  print('Soma de inteiros: $totalInteiros');

}