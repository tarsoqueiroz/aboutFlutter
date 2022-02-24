int exec(int a, int b, int Function(int, int) fn) {
  return fn(a, b);
}

main() {
  final resultado = exec(2, 3, (a, b) {
    return a * 10 + b;
  });

  print("O resultado é ${resultado}");
}
