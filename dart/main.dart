void main(List<String> args) {
  const int arraySize = 100000;
  const int repeat = 100000;

  final List<int> testArray = List.generate(arraySize, (int i) => i);
  double sum = 0.0;
  int i, j;
  for (i = 0; i < arraySize; ++i) {
    testArray[i] = i;
  }
  for (i = 0; i < repeat; ++i) {
    for (j = 0; j < arraySize; ++j) {
      sum += testArray[(i + j) % arraySize];
    }
  }
  print(sum);
}
