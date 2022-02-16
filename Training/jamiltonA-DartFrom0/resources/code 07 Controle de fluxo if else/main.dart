void main() {
  /*
  ** Controle de fluxo (if else)
  */
  // if (CONDICAO) {
  //   //caso a condição seja satisfeita
  // }

  if (5 == 5 && 6 == 6) {
    //se
    print("Verdade");
  } else {
    //senao
    print("Falso");
  }

  var idade = 18;
  if (idade < 14) {
    print("criança");
  } else if (idade >= 14 && idade <= 17) {
    // 14 e 17
    print("adolescente");
  } else {
    print("adulto");
  }

  var media = 8;
  if (media >= 6) {
    print("aprovado");
  } else {
    print("reprovado");
  }
}
