import 'uf.dart';

/// Classe que modela uma Mesoregião na API do IBGE
class Mesorregiao {
  int id;
  String nome;
  UF uF;

  Mesorregiao({this.id, this.nome, this.uF});

  Mesorregiao.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    uF = json['UF'] != null ? UF.fromJson(json['UF']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = {};
    data['id'] = id;
    data['nome'] = nome;
    if (uF != null) {
      data['UF'] = uF.toJson();
    }
    return data;
  }

  @override
  String toString() {
    return '''Mesorregiao{nome: $nome}''';
  }
}