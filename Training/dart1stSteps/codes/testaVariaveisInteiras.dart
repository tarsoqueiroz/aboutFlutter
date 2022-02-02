void main() {
  int idade = 26;
  int idade_irmao = idade + 2;
  int idade_avo = (idade + idade_irmao) * 3;

  print(idade);
  print(idade_irmao);
  print(idade_avo);

  print("Eu tenho $idade anos");
  print("Meu irmao tem $idade_irmao anos");
  print("Meu avo tem $idade_avo anos");
}
