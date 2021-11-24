[![style: effective dart](https://img.shields.io/badge/style-effective_dart-40c4ff.svg)](https://github.com/tenhobi/effective_dart)

<a href="https://www.buymeacoffee.com/rodrigobastosv" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me A Coffee" style="height: 60px !important;width: 217px !important;" ></a>

Pacote criado para ser uma abstração e facilitar o uso da API do [IBGE][ibge] para descobrimento de estados e de municipios;

Com este pacote você pode buscar todos os estados do Brasil, e além disso pode
buscar todos os munícipios de um determinado estado.

## ⛏️Como Usar

A função básica de buscar todos os estados pode ser obtida através do comando abaixo:

```dart
void main() async {
  final controller = EstadosMunicipiosController();
  final estados = await controller.buscaTodosEstados();
  print(estados);
}
```

Já para buscar os municípios de um determinado estado basta passar a sigla do munícipo para a função abaixo:

```dart
void main() async {
  final controller = EstadosMunicipiosController();
  final municipios = await controller.buscaMunicipiosPorEstado('CE1');
  print(municipios);
}
```

## Todo
 - [] Criar testes

## Sugestões, Melhorias e Bugs

Para sugerir melhorias ou para apontar algum bug [issue tracker][tracker].

[tracker]: https://github.com/rodrigobastosv/estados_municipios/issues
[ibge]: https://servicodados.ibge.gov.br/api/docs
