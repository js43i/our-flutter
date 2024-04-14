void main(List<String> args) {
  // Pass printElement as a parameter.
  list.forEach(printElement);
}

void printElement(int element) {
  print(element);
}

var list = [1, 2, 3];
