import 'package:estados_municipios/estados_municipios.dart';

void main() async {
  final controller = EstadosMunicipiosController();
  final estados = await controller.buscaTodosEstados();
  final estado = estados[0];
  print(estado);
  for (final e in estados) {
    final municipios = await controller.buscaMunicipiosPorEstado(e.sigla);
    print(municipios);
  }
}
