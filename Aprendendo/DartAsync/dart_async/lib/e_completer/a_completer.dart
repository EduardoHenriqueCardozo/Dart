import 'dart:async';

Future<void> main() async {
  try {
    final mensagem = await buscarAlgo(0);
    print('Mensagem $mensagem');
  } catch (erro, stackTrace) {
    print(erro);
    print(stackTrace);
  }
}

Future<String> buscarAlgo(int numero) {
  final completer = Completer<String>();

  Timer(Duration(seconds: 2), () {
    if (numero == 0) {
      completer.complete('Numero Enviado Com Sucesso');
    } else {
      completer.completeError('Numero enviado com falha', StackTrace.current);
    }
  });

  return completer.future;
}
