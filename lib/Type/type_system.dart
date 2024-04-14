void printInts(List<int> a) => print(a);

void main() {
  final list = <int>[];
  list.add(1);
  list.add(2);
  printInts(list);

  //Animal c = Cat();
  //Cat c = MaineCoon();

  //List<Cat> myCats = myMaineCoons;
}

class Animal {}

num y = 3; // A num can be double or int.

// Inferred as if you wrote <int>[].
List<int> listOfInt = [];

// Inferred as if you wrote <double>[3.0].
var listOfDouble = [3.0];

// Inferred as Iterable<int>.
var ints = listOfDouble.map((x) => x.toInt());
