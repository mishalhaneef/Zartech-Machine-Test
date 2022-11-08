void main(List<String> args) {
  List data = [
    1,
    6,
    5,
  ];
  int testInt = 0;

  test() {
    for (int i = 0; i < data.length; i++) {
      testInt = data[i] + testInt;
    }
    print(testInt);
  }
}
