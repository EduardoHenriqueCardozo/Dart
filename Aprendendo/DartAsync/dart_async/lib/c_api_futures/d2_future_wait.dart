void main() {
  print('Init Main');

  var f1 = Future.delayed(Duration(seconds: 2), () => 'f1');
  var f2 = Future.delayed(Duration(seconds: 1), () => 'f2');
  var f3 = Future.delayed(Duration(seconds: 3), () => 'f3');
  var f4 = Future.delayed(Duration(seconds: 1), () => 'f4');
  var f5 = Future.delayed(Duration(seconds: 1), () => Future.value('Erro na execução'));

  print(DateTime.now().toIso8601String());
  Future.wait(
    [f1, f2, f3, f4, f5],
    eagerError: true,
    cleanUp: (successValue) {
      print('Completou $successValue');
    },
  ).then(
    (arrayValues) {
      print(DateTime.now().toIso8601String());
      print(arrayValues[0]);
      print(arrayValues[1]);
      print(arrayValues[2]);
      print(arrayValues[3]);
      print(arrayValues);
    },
  ).catchError((error) {
    print(error);
  });

  print('End Main');
}
