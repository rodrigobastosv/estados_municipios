import 'constants/api_keys.dart';
import 'microrregiao.dart';

/// Classe que modela um Município na API do IBGE
class Municipio {
  final int id;
  final String nome;
  final Microrregiao microrregiao;

  Municipio({
    required this.id,
    required this.nome,
    required this.microrregiao,
  });

  /// Método para desserializar o objeto
  factory Municipio.fromJson(Map<String, dynamic> json) => Municipio(
        id: json[ApiKeys.id],
        nome: json[ApiKeys.nome],
        microrregiao: Microrregiao.fromJson(
          json[ApiKeys.microrregiao],
        ),
      );

  /// Método para serializar o objeto
  Map<String, dynamic> toJson() => <String, dynamic>{
        ApiKeys.id: id,
        ApiKeys.nome: nome,
        ApiKeys.microrregiao: microrregiao.toJson(),
      };

  @override
  String toString() => '''Municipio{nome: $nome}''';
}
