import 'package:dart_poo/5_heranca_covariant/Classes/banana.dart';
import 'package:dart_poo/5_heranca_covariant/Classes/fruta.dart';
import 'package:dart_poo/5_heranca_covariant/Classes/humano.dart';
import 'package:dart_poo/5_heranca_covariant/Classes/macaco.dart';

void main(){
  
  var humano = Humano();
  humano.comer(Fruta());
  
  var macaco = Macaco();
  macaco.comer(Banana('Nanica'));
  
}