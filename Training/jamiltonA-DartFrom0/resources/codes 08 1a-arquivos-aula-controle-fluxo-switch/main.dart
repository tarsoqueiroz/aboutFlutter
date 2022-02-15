void main() {
  var comando = "depositar";

  switch (comando) {
    case "depositar":
      print("Desposite um valor");
      break;
    case "sacar":
      print("Faça um saque");
      break;
    default:
      print("Nenhuma opção escolhida");
  }

  if (comando == "depositar") {
    print("Desposite um valor");
  } else if (comando == "sacar") {
    print("Faça um saque");
  } else {
    print("Nenhuma opção escolhida");
  }
}
