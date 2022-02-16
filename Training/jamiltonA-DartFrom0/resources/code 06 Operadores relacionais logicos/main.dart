void main() {
  /*
  ** Operadores relacionais
  **
  ** == (igual a)
  ** != (diferente)
  ** > (Maior que)
  ** < (Menor que)
  ** >= (Maior ou igual)
  ** <= (Menor ou igual)
  */
  var notaAluno = 8;
  bool resultado = notaAluno >= 6;

  print(resultado); //true ou false

  /*
  ** Operadores lógicos
  **
  ** && (e) -> true
  ** || (Ou)
  */
  var notaProva = 4;
  var notaTrabalho = 8;

  print(notaProva >= 6 || notaTrabalho >= 6);
  print(5 == 5 && 6 == 6);

  /*
  ** Operador not (negação)
  **
  ** ! (negação)
  */
  print(!false);
}
