import 'dart:async';

Future<void> main() async {
  final usuario = UsuarioRepository();
  usuario.salvarComum((sucesso) {
    print(sucesso);
  }, (error) {
    print(error);
  });


  //Completer
  try {
    final sucesso = await usuario.salvarCompleter();
    print('Sucesso Completer: $sucesso');
  } catch (erro) {
    print('Error Completer: $erro');
  }
}

class UsuarioRepository {
  void salvarComum(void Function(String) callbackSuccess, void Function(String) callbackError) {
    Timer(Duration(seconds: 2), () {
      try {
        // throw Exception();
        callbackSuccess('Usuário Salvo com Sucesso');
      } on Exception catch (e) {
        callbackError('Erro ao salvar Usuário! : $e');
      }
    });
  }


  //Completer
  Future<String> salvarCompleter() {
    final completer = Completer<String>();
    Timer(Duration(seconds: 2), () {
      try {
        // throw Exception();
        completer.complete('Usuário Salvo com Sucesso');
      } on Exception catch (e) {
        completer.completeError('Erro ao salvar Usuário! : $e');
      }
    });
    return completer.future;
  }
}
