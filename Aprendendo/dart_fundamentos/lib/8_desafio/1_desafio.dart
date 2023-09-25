void main() {

  //! Detalhe sobre a String
  //! A String é composta por 4 campos (Nome|Idade|Profissão|Estado onde mora)
  final pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];

  //! Baseado no array acima monte um relatório onde:
  //! 1 - Apresente os pacientes com mais de 20 anos e print o nome deles
  //! 2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)
  //! 3 - Apresente a quantidade de pacientes que moram em SP

  //Resposta 1 
  print('Resposta da questão 1: ');
  for (var paciente in pacientes) {
    final listaPacientes = paciente.split('|');
    final idadePaciente = int.tryParse(listaPacientes[1]) ?? 0;   
    if (idadePaciente > 20) {
      print(listaPacientes[0]);
    }
  }
  print(' ');

  //Resposta 2
  print('Resposta da questão 2: ');
  int quantDesenvolvedor = 0;
  int quantEstudante = 0;
  int quantDentista = 0;
  int quantJornalista = 0;

  for (var paciente in pacientes) {
    var listaPaciente = paciente.split('|');
    
    if (listaPaciente[2].toLowerCase() == 'desenvolvedor') {
      quantDesenvolvedor += 1;
    } else if(listaPaciente[2].toLowerCase() == 'estudante'){
      quantEstudante += 1;
    } else if(listaPaciente[2].toLowerCase() == 'dentista'){
      quantDentista += 1;
    } else if(listaPaciente[2].toLowerCase() == 'jornalista'){
      quantJornalista += 1;
    }
  }
  print('Desenvolvedores: $quantDesenvolvedor | Estudantes: $quantEstudante | Dentista: $quantDentista | Jornalista: $quantJornalista');
  print(' ');

  //Resposta 3
  print('Resposta da questão 3: ');
  int moradoresSP = 0;
  for (var paciente in pacientes) {
    var listaPaciente = paciente.split('|');

    if (listaPaciente[3] == 'SP') {
      moradoresSP += 1;
    }
  }
  print('Pacientes que moram em SP: $moradoresSP');
}