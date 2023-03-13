# Usando o teclado para entrada e saída de dados com Dart

## About

Quando começamos a programar, é importante aprendermos a "conversar" com o computador, isto é, mandar e receber informações!

Nesse Alura+ sobre Dart, aprenderemos como fazer a fazer isso da forma mais simples e direta: Usando o terminal! Para isso, vamos ler informações do teclado, e mostrar informações na tela.

Acesse aqui o link para saber mais sobre o [IMC](https://pt.wikipedia.org/wiki/%C3%8Dndice_de_massa_corporal).

## Code

```dart
import 'dart:io';

void main() {
  int idade = 54;

  print("Olá mundo!!!");
  print(22);
  print(1.75);
  print("Minha idade é " + idade.toString() + ".");
  print("Ou minha idade é $idade.");
  print("E terei ${idade + 1} no próximo ano.");

  print("\n-------\n");
  print("Digite algo: ");
  stdin.readLineSync();
  print("Já escrevi");

  print("\n-------\n");
  print("Qual a sua idade?");
  String? input = stdin.readLineSync();
  if (input != null) {
    int suaIdade = int.parse(input);
    print("Sua idade é $input.");
    print("Ano que vem você terá ${suaIdade + 1}");
  }
}
```
