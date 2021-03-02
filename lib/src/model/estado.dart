import 'regiao.dart';

/// Classe que modela um Estado na API do IBGE
class Estado {
  /// Id do estado IBGE
  int? id;

  /// Sigla identificadora do estado
  String? sigla;

  /// Nome do estado
  String? nome;

  /// Região do estado
  Regiao? regiao;

  Estado({
    this.id,
    this.sigla,
    this.nome,
    this.regiao,
  });

  /// Método para desserializar o objeto
  Estado.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    sigla = json['sigla'];
    nome = json['nome'];
    regiao = json['regiao'] != null ? Regiao.fromJson(json['regiao']) : null;
  }

  /// Método para serializar o objeto
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['sigla'] = sigla;
    data['nome'] = nome;
    if (regiao != null) {
      data['regiao'] = regiao!.toJson();
    }
    return data;
  }

  @override
  String toString() {
    return '''Estado{sigla: $sigla, nome: $nome}''';
  }
}
