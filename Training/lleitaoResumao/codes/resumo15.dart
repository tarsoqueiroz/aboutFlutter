imprimirProdutos({String nome = "", double preco = 0.0}) {
  print("O produto ${nome} tem preco R\$${preco}");
}

class Produto {
  String nome = "";
  double preco = 0.0;

  // parâmetros nomeados
  Produto({String this.nome = "Product", double this.preco = 0.00});
  // Produto(String nome, double preco) {
  //   this.nome = nome;
  //   this.preco = preco;
  // }
}

void main() {
  var p1 = new Produto(nome: "Lápis", preco: 4.54);
  print("O produto ${p1.nome} tem preco R\$${p1.preco}");
  var p2 = Produto(preco: 4412.34, nome: "Geladeira");
  imprimirProdutos(nome: p2.nome, preco: p2.preco);
  var p3 = Produto(nome: "Novo produto");
  imprimirProdutos(preco: p3.preco, nome: p3.nome);
}
