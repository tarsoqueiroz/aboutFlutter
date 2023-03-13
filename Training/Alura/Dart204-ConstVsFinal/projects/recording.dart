void main() {
  const String constName = "Tarso";
  print(constName);
  // constName = "Dutra";  // Erro!!! Não pode haver atribuição

  // const String otherName; // Erro!!! Deve ser inicializada

  final String moreName = "Tarso";
  print(moreName);
  // moreName = "Dutra"; // Erro!!! Só pode ser atribuída uma vez

  final String oneMoreName;
  oneMoreName = "Tarso";
  print(oneMoreName);
  // oneMoreName = "Dutra"; // Erro!!! Só pode ser atribuída uma vez
}
