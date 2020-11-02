import 'microrregiao.dart';

/// Classe que modela um Município na API do IBGE
class Municipio {
  int id;
  String nome;
  Microrregiao microrregiao;

  Municipio({this.id, this.nome, this.microrregiao});

  Municipio.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    microrregiao = json['microrregiao'] != null
        ? Microrregiao.fromJson(json['microrregiao'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final data = {};
    data['id'] = id;
    data['nome'] = nome;
    if (microrregiao != null) {
      data['microrregiao'] = microrregiao.toJson();
    }
    return data;
  }

  @override
  String toString() {
    return '''Municipio{nome: $nome}''';
  }
}
