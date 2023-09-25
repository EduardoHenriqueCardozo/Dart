void main() {
  // Future
  // Pode ter 3 status: incompleto, completo c/ erro e completo c/ sucesso.

  Future(() {
    //Funcao assicrona
  })
  .then((value) {
    // registrando função que será executada quando o futuro for completado com sucesso!
  }).catchError((error) {
    // Registrando funcao que será executada quando o futuro for completado com erro!!!
  }).whenComplete(() {
    // Registrando a funcao que será executada SEMPRE (com erro ou sucesso)!
  });
}
