import 'mesorregiao.dart';

/// Classe que modela uma Microregião na API do IBGE
class Microrregiao {
  int? id;
  String? nome;
  Mesorregiao? mesorregiao;

  Microrregiao({
    this.id,
    this.nome,
    this.mesorregiao,
  });

  /// Método para desserializar o objeto
  Microrregiao.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    mesorregiao = json['mesorregiao'] != null
        ? Mesorregiao.fromJson(json['mesorregiao'])
        : null;
  }

  /// Método para serializar o objeto
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['nome'] = nome;
    if (mesorregiao != null) {
      data['mesorregiao'] = mesorregiao!.toJson();
    }
    return data;
  }

  @override
  String toString() {
    return '''Microrregiao{nome: $nome}''';
  }
}
