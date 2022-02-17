main() {
  dynamic varDynamic;

  varDynamic = 1;
  print("varDynamic: (${varDynamic}) type: ${varDynamic.runtimeType}");
  varDynamic = 1.1;
  print("varDynamic: (${varDynamic}) type: ${varDynamic.runtimeType}");
  varDynamic = "Text for test";
  print("varDynamic: (${varDynamic}) type: ${varDynamic.runtimeType}");
  varDynamic = false;
  print("varDynamic: (${varDynamic}) type: ${varDynamic.runtimeType}");
  varDynamic = ['Test', "Test", 1, 30];
  print("varDynamic: (${varDynamic}) type: ${varDynamic.runtimeType}");
  varDynamic = {0, 1, 2, 3};
  print("varDynamic: (${varDynamic}) type: ${varDynamic.runtimeType}");
}
