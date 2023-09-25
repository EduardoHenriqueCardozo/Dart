import 'dart:convert';

import 'package:http/http.dart';

Future<void> main() async {
  final result = await get(Uri.parse('http://viacep.com.br/ws/01001050/json/'));

  // print(result.body);
  // print('');
  // print(result.statusCode);
  // print('');
  // print(result.request);
  // print('');
  // print(result.headers);
  // print('');

  if (result.statusCode != 200) {
    print('Erro ao buscar CEP');
    return;
  }

  final resultData = json.decode(result.body);

  // Para diferenciar um json da requisição para um mapa do dart deve-se olhar as "" (aspas duplas)
  print(result.body);

  if (resultData.containsKey('erro')) {
    print('CEP não existe');
  } else {
    print(resultData['logradouro']);
  }
}
