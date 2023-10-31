import 'constants/api_keys.dart';
import 'regiao.dart';

/// Classe que modela um Estado na API do IBGE
class Estado {
  /// Id do estado IBGE
  final int id;

  /// Sigla identificadora do estado
  final String sigla;

  /// Nome do estado
  final String nome;

  /// Região do estado
  final Regiao regiao;

  Estado({
    required this.id,
    required this.sigla,
    required this.nome,
    required this.regiao,
  });

  /// Método para desserializar o objeto
  factory Estado.fromJson(Map<String, dynamic> json) => Estado(
        id: json[ApiKeys.id],
        sigla: json[ApiKeys.sigla],
        nome: json[ApiKeys.nome],
        regiao: Regiao.fromJson(
          json[ApiKeys.regiao],
        ),
      );

  /// Método para serializar o objeto
  Map<String, dynamic> toJson() => <String, dynamic>{
        ApiKeys.id: id,
        ApiKeys.sigla: sigla,
        ApiKeys.nome: nome,
        ApiKeys.regiao: regiao
      };

  @override
  String toString() => '''Estado{sigla: $sigla, nome: $nome}''';
}
