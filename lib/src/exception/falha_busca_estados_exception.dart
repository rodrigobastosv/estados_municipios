// Exceção lançada quando a busca por estados falha
class FalhaBuscaEstadosException implements Exception {
  FalhaBuscaEstadosException(this.mensagem);

  final String mensagem;
}
