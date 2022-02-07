void main() {
  ContaCorrente conta1 = ContaCorrente();
  ContaCorrente conta2 = ContaCorrente();

  conta1.titular = "Amanda";
  conta1.agencia = 123;
  conta1.conta = 1;

  conta2.titular = "Amanda";
  conta2.agencia = 123;
  conta2.conta = 1;

  print("conta1 == conta2                 ? ${conta1 == conta2}");

  print(
      "conta1.titular == conta2.titular ? ${conta1.titular == conta2.titular}");
  print(
      "conta1.agencia == conta2.agencia ? ${conta1.agencia == conta2.agencia}");
  print("conta1.conta == conta2.conta     ? ${conta1.conta == conta2.conta}");
  print("conta1.saldo == conta2.saldo     ? ${conta1.saldo == conta2.saldo}");

  print("hashcode conta1                  : ${conta1.hashCode}");
  print("hashcode conta2                  : ${conta2.hashCode}");

  conta1 = conta2;

  print(conta1.saldo);
  print(conta2.saldo);
  conta1.saldo += 1000;
  print(conta1.saldo);
  print(conta2.saldo);
}

class ContaCorrente {
  String titular = "";
  int agencia = 0;
  int conta = 0;
  double saldo = 30.0;
}
