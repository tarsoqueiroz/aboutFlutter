# Const x Final no Dart

## About

Const e Final são modificadores que aparecem constantemente na vida de quem programa com Dart e Flutter e se você está entre essas pessoas ou ainda está começando nesse mundo, este Alura+ é pra você. Vamos mergulhar na definição desses termos e aprender as principais diferenças entre eles.

## Conceitos

- Imutabilidade
- Const e Final

## Code

```dart
void main() {
  const String constName = "Tarso";
  print(constName);
  // constName = "Dutra";  // Erro!!! Não pode haver atribuição

  // const String otherName; // Erro!!! Deve ser inicializada

  final String moreName = "Tarso";
  print(moreName);
  // moreName = "Dutra"; // Erro!!! Só pode ser atribuída uma vez

  final String oneMoreName;
  oneMoreName = "Tarso";
  print(oneMoreName);
  // oneMoreName = "Dutra"; // Erro!!! Só pode ser atribuída uma vez
}
```
