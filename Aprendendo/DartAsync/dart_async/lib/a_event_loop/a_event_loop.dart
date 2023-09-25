import 'dart:async';

void main(){
  print('Iniciando Main');

  Timer.run(() {
    scheduleMicrotask(() => print('Nova Microtask1'));
    print('event 1');
  });
  Timer.run(() => print('Event 2'));
  Timer.run(() => print('Event 3'));
  scheduleMicrotask(() => print('Microtask 1'));
  scheduleMicrotask(() => print('Microtask 2'));
  print('Fim main');

}