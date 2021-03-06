import '../lib/cliente.dart';
import '../lib/contacorrente.dart';

//import 'package:alurabank/cliente.dart';
////import 'package:alurabank/contacorrente.dart';

void main() {
  ContaCorrente contaDaAmanda = ContaCorrente();
  ContaCorrente contaDoTiago = ContaCorrente();

  Cliente amanda = Cliente();

  amanda.nome = "Amanda";
  amanda.cpf = "123.456.789-00";
  amanda.profissao = "Programadora Dart";
  contaDaAmanda.titular = amanda;

  print("Titular         : ${contaDaAmanda.titular.nome}");
  print("CPF             : ${contaDaAmanda.titular.cpf}");
  print("Profissao       : ${contaDaAmanda.titular.profissao}");

  Cliente tiago = Cliente()
    ..nome = "Tiago"
    ..cpf = "135.246.789-00"
    ..profissao = "Dart programmer";
  contaDoTiago.titular = tiago;

  print("Titular         : ${contaDoTiago.titular.nome}");
  print("CPF             : ${contaDoTiago.titular.cpf}");
  print("Profissao       : ${contaDoTiago.titular.profissao}");
}
