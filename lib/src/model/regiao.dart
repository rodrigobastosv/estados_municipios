/// Classe que modela uma Região na API do IBGE
class Regiao {
  int? id;
  String? sigla;
  String? nome;

  Regiao({
    this.id,
    this.sigla,
    this.nome,
  });

  /// Método para deserializar o objeto
  Regiao.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    sigla = json['sigla'];
    nome = json['nome'];
  }

  /// Método para serializar o objeto
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['sigla'] = sigla;
    data['nome'] = nome;
    return data;
  }

  @override
  String toString() {
    return '''Regiao{sigla: $sigla, nome: $nome}''';
  }
}
