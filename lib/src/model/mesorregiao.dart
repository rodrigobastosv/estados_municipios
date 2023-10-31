import 'constants/api_keys.dart';
import 'uf.dart';

/// Classe que modela uma Mesoregião na API do IBGE
class Mesorregiao {
  final int id;
  final String nome;
  final UF uf;

  Mesorregiao({
    required this.id,
    required this.nome,
    required this.uf,
  });

  /// Método para deserializar o objeto
  factory Mesorregiao.fromJson(Map<String, dynamic> json) => Mesorregiao(
        id: json[ApiKeys.id],
        nome: json[ApiKeys.nome],
        uf: UF.fromJson(
          json[ApiKeys.uf],
        ),
      );

  /// Método para serializar o objeto
  Map<String, dynamic> toJson() => <String, dynamic>{
        ApiKeys.id: id,
        ApiKeys.nome: nome,
        ApiKeys.uf: uf.toJson(),
      };

  @override
  String toString() => '''Mesorregiao{nome: $nome}''';
}
