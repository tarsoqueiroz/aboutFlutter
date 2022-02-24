main() {
  var cjConjunto1 = {0, 1, 2, 3, 4, 4, 4, 4, 4};
  print(cjConjunto1);
  print(cjConjunto1.length);
  print(cjConjunto1 is Set);

  Set<int> cjConjunto2 = {0, 1, 2, 3, 4, 4, 4, 4, 4};
  print(cjConjunto2);
  print(cjConjunto2.length);
  print(cjConjunto2 is Set);
}
