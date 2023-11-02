import 'constants/api_keys.dart';

/// Classe que modela uma Região na API do IBGE
class Regiao {
  final int id;
  final String sigla;
  final String nome;

  Regiao({
    required this.id,
    required this.sigla,
    required this.nome,
  });

  /// Método para deserializar o objeto
  factory Regiao.fromJson(Map<String, dynamic> json) => Regiao(
        id: json[ApiKeys.id],
        sigla: json[ApiKeys.sigla],
        nome: json[ApiKeys.nome],
      );

  /// Método para serializar o objeto
  Map<String, dynamic> toJson() => <String, dynamic>{
        ApiKeys.id: id,
        ApiKeys.sigla: sigla,
        ApiKeys.nome: nome,
      };

  @override
  String toString() => '''Regiao{sigla: $sigla, nome: $nome}''';
}
