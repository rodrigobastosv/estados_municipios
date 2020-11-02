import 'package:estados_municipios/estados_municipios.dart';

void main() async {
  final controller = EstadosMunicipiosController();
  final estados = await controller.buscaTodosEstados();
  final estado = estados[0];
  final municipios = await controller.buscaMunicipiosPorEstado(estado.sigla);
  print(municipios);
}
