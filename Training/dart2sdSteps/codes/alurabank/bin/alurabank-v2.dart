void main() {
  ContaCorrente contaDaAmanda = ContaCorrente();

  contaDaAmanda.titular = "Amanda";
  contaDaAmanda.agencia = 123;
  contaDaAmanda.conta = 1;
//  contaDaAmanda.saldo = 150.0;

  print(contaDaAmanda);
  print("Titular: ${contaDaAmanda.titular}");
  print("agencia: ${contaDaAmanda.agencia}");
  print("conta  : ${contaDaAmanda.conta}");
  print("saldo  : ${contaDaAmanda.saldo}");
}

class ContaCorrente {
  String titular = "";
  int agencia = 0;
  int conta = 0;
  double saldo = 30.0;
}
