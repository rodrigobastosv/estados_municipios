// Exceção lançada quando a busca por municípios falha
class FalhaBuscaMunicipiosException implements Exception {
  FalhaBuscaMunicipiosException(this.mensagem);

  final String mensagem;
}
