void main() {
  ContaCorrente contaDaAmanda = ContaCorrente();
//  ContaCorrente contaDoTiago = ContaCorrente();

  Cliente amanda = Cliente();

  amanda.nome = "Amanda";
  amanda.cpf = "123.456.789-00";
  amanda.profissao = "Programadora Dart";

  contaDaAmanda.titular = amanda;

  print("Titular         : ${contaDaAmanda.titular.nome}");
  print("CPF             : ${contaDaAmanda.titular.cpf}");
  print("Profissao       : ${contaDaAmanda.titular.profissao}");
}

class Cliente {
  String nome = "";
  String cpf = "";
  String profissao = "";
}

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
