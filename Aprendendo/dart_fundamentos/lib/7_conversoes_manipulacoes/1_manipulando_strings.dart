void main() {
  final nome = 'Eduardo Henrique';

  //Seleciona um espaço dentro do valor da variavel
  var subStringNome = nome.substring(8);
  print(subStringNome);

  var subStringNome2 = nome.substring(0,7);
  print(subStringNome2);

  var sexo = 'Masculino';

  var siglaSexo = sexo.substring(0,1);
  print(siglaSexo);
  if (siglaSexo == 'M') {
    print('Seu Sexo é Masculino');
  }

  var sexo2 = 'Feminino';

  if (sexo2.toLowerCase().startsWith('F')) {
    print('Seu Sexo é Feminino');
  }

  //Função contains
  //Verifica se contém na variavel oque é requisitado
  if (nome.toLowerCase().contains('henrique')) { 
    print('Contém Henrique');
  }

  //Interpolação

  var primeiroNome = 'Eduardo';
  var segundoNome = 'Henrique';

  //Exemplo errado:
  var saudacao = 'Olá ' + primeiroNome + segundoNome + ' seja bem vindo!' ;
  print(saudacao);

  //Exemplo certo:
  var saudacao2 = 'Olá $primeiroNome $segundoNome seja bem vindo!';
  print(saudacao2);

  //Caso precise utilizar alguma função junto com a variavel é necessario usar chaves {}
  print('Olá ${primeiroNome.toUpperCase()} seja bem vindo');
  
  //Caso necessite realizar algum calculo é necessario utilizar chaves {}
  print('A soma de 2 + 2 é: ${2 + 2}');

  //Split
  //Dividi a variavel de acordo com o caractere desejado e a transforma em uma lista
  var paciente = 'Eduardo Henrique|22|Estágiario|RO';

  var dadosPaciente = paciente.split('|');
  print(dadosPaciente);
  
  for (var dado in dadosPaciente) {
    print(dado);
  }

  var pacientes = [
    'Eduardo Henrique|22|Estágiario|RO',
    'Luciani Cardozo|43|Dona de casa|RO',
    'José Melo|51|Empresário|RO',
  ];

  for (var paciente in pacientes) {
    var dadosPaciente = paciente.split('|');
    print('Nome: ${dadosPaciente[0]} || Profissão: ${dadosPaciente[2]}');

    var nome = dadosPaciente[0];
    var nomeSeparado = nome.split(' ');
    print(nomeSeparado.last);
  }
}