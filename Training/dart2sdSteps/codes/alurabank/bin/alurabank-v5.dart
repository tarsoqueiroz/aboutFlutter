void main() {
  ContaCorrente contaDaAmanda = ContaCorrente();
  contaDaAmanda.titular = "Amanda";
  ContaCorrente contaDoTiago = ContaCorrente();
  contaDoTiago.titular = "Tiago";

  print("Saldo da ${contaDaAmanda.titular}: ${contaDaAmanda.saldo}");
  contaDaAmanda.saque(80.0);
  print("Saldo da ${contaDaAmanda.titular}: ${contaDaAmanda.saldo}");

  print("Saldo da ${contaDoTiago.titular}: ${contaDoTiago.saldo}");
  contaDoTiago.saque(130.0);
  print("Saldo da ${contaDoTiago.titular}: ${contaDoTiago.saldo}");
}

class ContaCorrente {
  String titular = "";
  int agencia = 145;
  int conta = 0;
  double saldo = 20.0;

  void saque(double valorDoSaque) {
    if (this.saldo - valorDoSaque < -100) {
      print("Sem saldo suficiente");
    } else {
      print("Sacando $valorDoSaque reais");
      this.saldo -= valorDoSaque;
    }
  }

  void deposito(double valorDoDeposito) {
    this.saldo
  }
}
