main() {
  Map<String, double> notaDosAlunos = {
    "Tarso": 5.4,
    "Cati": 9.9,
    "Anna": 7.8,
    "Breno": 6.5,
  };

  for (var chave in notaDosAlunos.keys) {
    print("Aluno :\t ${chave} = ${notaDosAlunos[chave]}");
  }
  for (var registro in notaDosAlunos.entries) {
    print("Aluno :\t ${registro.key} = ${notaDosAlunos[registro.value]}");
  }
}
