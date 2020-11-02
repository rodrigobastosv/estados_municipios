import 'regiao.dart';

/// Classe que modela uma UF na API do IBGE
class UF {
  int id;
  String sigla;
  String nome;
  Regiao regiao;

  UF({this.id, this.sigla, this.nome, this.regiao});

  UF.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    sigla = json['sigla'];
    nome = json['nome'];
    regiao = json['regiao'] != null ? Regiao.fromJson(json['regiao']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = {};
    data['id'] = id;
    data['sigla'] = sigla;
    data['nome'] = nome;
    if (regiao != null) {
      data['regiao'] = regiao.toJson();
    }
    return data;
  }

  @override
  String toString() {
    return '''UF{nome: $nome, sigla: $sigla}''';
  }
}
