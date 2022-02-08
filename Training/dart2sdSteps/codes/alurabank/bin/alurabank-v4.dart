void main() {
  ContaCorrente contaDaAmanda = ContaCorrente();
  contaDaAmanda.titular = "Amanda";

  double saque = 180.0;

  print("Saldo da ${contaDaAmanda.titular}: ${contaDaAmanda.saldo}");

  if (contaDaAmanda.saldo - saque < -100) {
    print("Sem saldo suficiente");
  } else {
    print("Sacando $saque reais");
    contaDaAmanda.saldo -= saque;
  }
  print("Saldo da ${contaDaAmanda.titular}: ${contaDaAmanda.saldo}");
}

class ContaCorrente {
  String titular = "";
  int agencia = 145;
  int conta = 0;
  double saldo = 20.0;
}
