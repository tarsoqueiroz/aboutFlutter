import 'cliente.dart';

class ContaCorrente {
  Cliente titular = Cliente();
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
    this.saldo;
  }
}
