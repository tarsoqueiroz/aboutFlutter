void main() {
  ContaCorrente conta = ContaCorrente();

  conta.titular = "Osrat";
  conta.agencia = 123;
  conta.conta = 1234;
  conta.saldo = 150.0;

  print(conta);
  print("Titular: ${conta.titular}");
  print("agencia: ${conta.agencia}");
  print("conta  : ${conta.conta}");
  print("saldo  : ${conta.saldo}");

//  String titular = "Gabriel";
//  int agencia = 123;
//  int conta = 145;
//  double saldo = 10.0;
}

class ContaCorrente {
  String titular = "";
  int agencia = 0;
  int conta = 0;
  double saldo = 0;
}
