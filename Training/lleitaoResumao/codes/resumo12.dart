class Produto {
  String nome = "";
  double preco = 0.0;
}

void main() {
  var p1 = new Produto();

  p1.nome = "Lápis";
  p1.preco = 4.54;
  print("O produto ${p1.nome} tem preco R\$${p1.preco}");
}
