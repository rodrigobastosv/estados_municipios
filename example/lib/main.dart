import 'package:estados_municipios/estados_municipios.dart';

void main() async {
  final controller = EstadosMunicipiosController();
  final estados = await controller.buscaTodosEstados();

  for (var estado in estados) {
    print(estado);

    final municipios = await controller.buscaMunicipiosPorEstado(estado.sigla);
    print(municipios);
  }
}
