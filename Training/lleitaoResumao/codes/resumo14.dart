class Produto {
  String nome = "";
  double preco = 0.0;

  Produto(String this.nome, double this.preco);
  // Produto(String nome, double preco) {
  //   this.nome = nome;
  //   this.preco = preco;
  // }
}

void main() {
  var p1 = new Produto("Lápis", 4.54);
  print("O produto ${p1.nome} tem preco R\$${p1.preco}");
  var p2 = Produto("Geladeira", 4412.34);
  print("O produto ${p2.nome} tem preco R\$${p2.preco}");
}
