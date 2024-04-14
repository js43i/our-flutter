void printInts(List<int> a) => print(a);

void main() {
  final list = <int>[];
  list.add(1);
  list.add(2);
  printInts(list);
}

class Animal {
  void chase(Animal a) { ... }
  Animal get parent => ...
}

class HoneyBadger extends Animal {
  @override
  void chase(Animal a) { ... }

  @override
  HoneyBadger get parent => ...
}

class Animal {
  void chase(Animal a) { ... }
  Animal get parent => ...
}

class HoneyBadger extends Animal {
  @override
  void chase(Object a) { ... }

  @override
  Animal get parent => ...
}

Animal a = Cat();
a.chase(Alligator()); // Not type safe or feline safe.

num y = 3; // A num can be double or int.
y = 4.0;

// Inferred as if you wrote <int>[].
List<int> listOfInt = [];

// Inferred as if you wrote <double>[3.0].
var listOfDouble = [3.0];

// Inferred as Iterable<int>.
var ints = listOfDouble.map((x) => x.toInt());

Animal c = Cat();
Cat c = MaineCoon();

List<MaineCoon> myMaineCoons = ...
List<Cat> myCats = myMaineCoons;

