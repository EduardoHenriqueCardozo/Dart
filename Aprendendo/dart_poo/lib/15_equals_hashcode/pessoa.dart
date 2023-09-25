// ignore_for_file: public_member_api_docs, sort_constructors_first
class Pessoa {
  String nome;
  String idade;

  Pessoa({
    required this.nome,
    required this.idade,
  });

  // @override
  // bool operator ==(Object other){
  //   if (identical(this, other)) return true;

  //   bool isEquals = false;

  //   if(other is Pessoa){
  //     if (other.nome == nome) {
  //       if (other.idade == idade) {
  //         isEquals = true;
  //       }
  //     } 
  //   }
  //   return isEquals;
  // }

  // @override
  // bool operator ==(Object other){
  //   if (identical(this, other)) return true;

  //   return other is Pessoa
  //     && other.nome == nome
  //     && other.idade == idade;
  // }

  @override
  bool operator ==(covariant Pessoa other) {
    if (identical(this, other)) return true;
  
    return 
      other.nome == nome &&
      other.idade == idade;
  }
  @override
  int get hashCode => nome.hashCode ^ idade.hashCode;
}
