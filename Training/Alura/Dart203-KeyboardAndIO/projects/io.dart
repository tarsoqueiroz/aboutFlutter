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
