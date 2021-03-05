import 'dart:convert';

import 'package:http/http.dart' as http;

import 'exception/exceptions.dart';
import 'model/models.dart';

const urlBase = 'https://servicodados.ibge.gov.br/api/v1/localidades/estados';

class EstadosMunicipiosController {
  /// Busca todos os estados brasileiros
  Future<List<Estado>> buscaTodosEstados() async {
    try {
      final uri = Uri.parse(urlBase);
      final response = await http.get(uri);
      if (response.statusCode == 200) {
        final decodedResponse = jsonDecode(response.body) as List;
        return List.generate(
          decodedResponse.length,
          (i) => Estado.fromJson(
            decodedResponse[i],
          ),
        );
      } else {
        throw FalhaBuscaEstadosException('Erro ao buscar estados no servidor');
      }
    } on Exception {
      throw FalhaBuscaEstadosException('Erro ao buscar estados');
    }
  }

  /// Busca todos os municipios de um estado
  /// O parâmetro recebido é uma [String] com a sigla do Estado
  /// Este parâmetro pode ser minusculo ou maiúsculo ou em formato camel case
  ///
  /// Ex:
  /// buscaMunicipiosPorEstado('CE')
  /// buscaMunicipiosPorEstado('ce')
  /// buscaMunicipiosPorEstado('Sp')
  /// buscaMunicipiosPorEstado('SP')
  /// buscaMunicipiosPorEstado('sp')
  Future<List<Municipio>> buscaMunicipiosPorEstado(String siglaEstado) async {
    try {
      final uri = Uri.parse('$urlBase/$siglaEstado/municipios');
      final response = await http.get(uri);
      if (response.statusCode == 200) {
        final decodedResponse = jsonDecode(response.body) as List;
        if (decodedResponse.isEmpty) {
          throw NenhumMunicipioEncontradoException();
        }
        return List.generate(
          decodedResponse.length,
          (i) => Municipio.fromJson(
            decodedResponse[i],
          ),
        );
      } else {
        throw FalhaBuscaEstadosException(
            'Erro ao buscar municipios no servidor');
      }
    } on Exception {
      throw FalhaBuscaEstadosException('Erro ao buscar municipios');
    }
  }
}
