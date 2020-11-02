class Regiao {
  int id;
  String sigla;
  String nome;

  Regiao({
    this.id,
    this.sigla,
    this.nome,
  });

  Regiao.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    sigla = json['sigla'];
    nome = json['nome'];
  }

  Map<String, dynamic> toJson() {
    final data = {};
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
