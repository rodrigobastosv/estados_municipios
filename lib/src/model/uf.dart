import 'constants/api_keys.dart';
import 'regiao.dart';

/// Classe que modela uma UF na API do IBGE
class UF {
  final int id;
  final String sigla;
  final String nome;
  final Regiao regiao;

  UF({
    required this.id,
    required this.sigla,
    required this.nome,
    required this.regiao,
  });

  /// Método para desserializar o objeto
  factory UF.fromJson(Map<String, dynamic> json) => UF(
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
  String toString() => '''UF{nome: $nome, sigla: $sigla}''';
}
