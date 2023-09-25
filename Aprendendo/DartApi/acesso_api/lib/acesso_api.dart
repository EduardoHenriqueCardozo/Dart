import 'dart:convert';

void main() {
  final jsonCEP = '''
    [{
      "cep": "01001-000",
      "logradouro": "Praça da Sé",
      "complemento": "lado ímpar",
      "bairro": "Sé",
      "localidade": "São Paulo",
      "uf": "SP",
      "ibge": 3550308,
      "gia": "1004",
      "ddd": "11",
      "siafi": "7107"
    }]
  ''';

  // Converter de JSON para map
  final jsonData = json.decode(jsonCEP);

  // print(jsonData['logradouro']);
  print(jsonData[0]['logradouro']);

  // Converter de Map para JSON

  final jsonMap = [
    {'curso': 'Academia do flutter', 'totalAlunos': 880},
    {'curso': 'ImersãoGetX', 'totalAlunos': 550}
  ];

  print(json.encode(jsonMap));
}
