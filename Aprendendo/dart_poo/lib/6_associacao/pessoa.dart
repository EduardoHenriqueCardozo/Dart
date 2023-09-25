// Associações
// Existem dois tipos de associação: 
// Composição (Obrigatoria)
// Agregação (Não obrigatoria)

class Pessoa{
  String? nome;

  // Composição
  // Quando um atributo de associação é obrigatorio
  // No caso da classe Pessoa, é obrigatorio ela ter Endereço e CPF
  Endereco? endereco = Endereco();
  CPF cpf = CPF();

  // Agregação
  // Quando um atributo de associação não é obrigatorio
  // No caso da classe Pessoa, não é obrigatoio ela ter um Telefone
  Telefone? telefone;
}

class CPF{}

class Endereco{}

class Telefone {}