import 'constants/api_keys.dart';
import 'mesorregiao.dart';

/// Classe que modela uma Microregião na API do IBGE
class Microrregiao {
  final int id;
  final String nome;
  final Mesorregiao mesorregiao;

  Microrregiao({
    required this.id,
    required this.nome,
    required this.mesorregiao,
  });

  /// Método para desserializar o objeto
  factory Microrregiao.fromJson(Map<String, dynamic> json) => Microrregiao(
        id: json[ApiKeys.id],
        nome: json[ApiKeys.nome],
        mesorregiao: Mesorregiao.fromJson(
          json[ApiKeys.mesorregiao],
        ),
      );

  /// Método para serializar o objeto
  Map<String, dynamic> toJson() => <String, dynamic>{
        ApiKeys.id: id,
        ApiKeys.nome: nome,
        ApiKeys.mesorregiao: mesorregiao.toJson(),
      };

  @override
  String toString() => '''Microrregiao{nome: $nome}''';
}
