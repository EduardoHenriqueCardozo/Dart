void main() {
  //exception
  //é uma forma de tratar erros amigavelmente
  String idade = '38';
  String? nome = 'Eduardo';

  //try/parse
  //Usado para tratamento de erros 
  try { //tentar executar essa parte do codigo
    var idadeParse = int.parse(idade);
    nome.toLowerCase();

    if (idadeParse == 38) {
      throw Exception();
    }
  } on FormatException catch(e, s){ //caso retorne erro relacionado a formatação, executa essa parte do codigo
    print('Erro ao converter idade');
    print(s);
  } on TypeError catch(e){ //caso retorne erro relacionado a digitação, executa essa parte do codigo
    print('Erro ao imprimir nome');
  } on Exception {
    print('Erro idade == 38');
  } catch (erro) { //caso retorne algum erro, executa essa parte do codigo
    print('Erro ao converter idade');
  } finally { //Executa independente do resultado dos códigos acima
    print('Finally');
  }
}
