import 'uf.dart';

/// Classe que modela uma Mesoregião na API do IBGE
class Mesorregiao {
  int? id;
  String? nome;
  UF? uf;

  Mesorregiao({
    this.id,
    this.nome,
    this.uf,
  });

  /// Método para deserializar o objeto
  Mesorregiao.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    uf = json['UF'] != null ? UF.fromJson(json['UF']) : null;
  }

  /// Método para serializar o objeto
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['nome'] = nome;
    if (uf != null) {
      data['UF'] = uf!.toJson();
    }
    return data;
  }

  @override
  String toString() {
    return '''Mesorregiao{nome: $nome}''';
  }
}
