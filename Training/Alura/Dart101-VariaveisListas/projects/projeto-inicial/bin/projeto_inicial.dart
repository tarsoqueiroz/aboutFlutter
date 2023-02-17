import 'package:projeto_inicial/projeto_inicial.dart' as projeto_inicial;

void main(List<String> arguments) {
  print('Hello world: ${projeto_inicial.calculate()}!');

  int idade = 26; // Criar sempre inicializada
  int idadeHexa = 0x00001A; // valor em hexa
  print(idade);
  print(idadeHexa);

  double altura = 1.86;
  double numerao = 12e6;
  print('altura: $altura   idade: $idade');
  print(numerao);

  bool voceEhGeek = true;
  print(voceEhGeek);

  String nome = 'Tarso';
  String apelido = 'Zo';
  print(nome);
  print(apelido);

  String frase =  "Eu sou $nome ou $apelido\n"
                  "tenho $idade anos\n"
                  "e minha altura é de $altura metros";
  print(frase);

  apelido = 'Zoiudo';
  print(frase);

  List<String> listanomes = ['João', 'Pedro', 'Maria', 'Mario', 'Ana'];
  print(listanomes);
  print('Primeiro nome de amigos é ${listanomes[0]} de ${listanomes.length}');

  List<dynamic> kako = [27, 1.86, true, 'Caio Couto Moreira', 'Kako'];
  String frase2 = 'Eu sou ${kako[4]} \n'
                  'mas meu nome completo é: ${kako[3]}, \n'
                  'eu me considero geek? ${kako[2]}. \n'
                  'Eu tenho ${kako[1]} metros de altura e \n'
                  '${kako[0]} anos de idade';
  print(frase2)  ;
}
