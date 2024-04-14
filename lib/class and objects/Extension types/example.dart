extension type IdNumber(int id) {
  // Wraps the 'int' type's '<' operator:
  operator <(IdNumber other) => id < other.id;
  // Doesn't declare the '+' operator, for example,
  // because addition does not make sense for ID numbers.
}

void main() {
  // Without the discipline of an extension type,
  // 'int' exposes ID numbers to unsafe operations:
  int myUnsafeId = 42424242;
  myUnsafeId = myUnsafeId + 10; // This works, but shouldn't be allowed for IDs.

  var safeId = IdNumber(42424242);
  safeId + 10; // Compile-time error: No '+' operator.
  myUnsafeId = safeId; // Compile-time error: Wrong type.
  myUnsafeId = safeId as int; // OK: Run-time cast to representation type.
  safeId < IdNumber(42424241); // OK: Uses wrapped '<' operator.
}
extension type NumberE(int value) {
  // Operator:
  NumberE operator +(NumberE other) =>
      NumberE(value + other.value);
  // Getter:
  NumberE get myNum => this;
  // Method:
  bool isValid() => !value.isNegative;
}

extension type NumberE(int value) {
  NumberE operator +(NumberE other) =>
      NumberE(value + other.value);

  NumberE get next => NumberE(value + 1);
  bool isValid() => !value.isNegative;
}

void testE() { 
  var num = NumberE(1);
}

extension type NumberT(int value) 
  implements int {
  // Doesn't explicitly declare any members of 'int'.
  NumberT get i => this;
}

void main () {
  // All OK: Transparency allows invoking `int` members on the extension type:
  var v1 = NumberT(1); // v1 type: NumberT
  int v2 = NumberT(2); // v2 type: int
  var v3 = v1.i - v1;  // v3 type: int
  var v4 = v2 + v1; // v4 type: int
  var v5 = 2 + v1; // v5 type: int
  // Error: Extension type interface is not available to representation type
  v2.i;
}

void testE() { 
  var num1 = NumberE(1);
  int num2 = NumberE(2); // Error: Can't assign 'NumberE' to 'int'.
  
  num1.isValid(); // OK: Extension member invocation.
  num1.isNegative(); // Error: 'NumberE' does not define 'int' member 'isNegative'.
  
  var sum1 = num1 + num1; // OK: 'NumberE' defines '+'.
  var diff1 = num1 - num1; // Error: 'NumberE' does not define 'int' member '-'.
  var diff2 = num1.value - 2; // OK: Can access representation object with reference.
  var sum2 = num1 + 2; // Error: Can't assign 'int' to parameter type 'NumberE'. 
  
  List<NumberE> numbers = [
    NumberE(1), 
    num1.next, // OK: 'next' getter returns type 'NumberE'.
    1, // Error: Can't assign 'int' element to list type 'NumberE'.
  ];
}

void main() {
  var n = NumberE(1);

  // Run-time type of 'n' is representation type 'int'.
  if (n is int) print(n.value); // Prints 1.

  // Can use 'int' methods on 'n' at run time.
  if (n case int x) print(x.toRadixString(10)); // Prints 1.
  switch (n) {
    case int(:var isEven): print("$n (${isEven ? "even" : "odd"})"); // Prints 1 (odd).
  }
}

void main() {
  int i = 2;
  if (i is NumberE) print("It is"); // Prints 'It is'.
  if (i case NumberE v) print("value: ${v.value}"); // Prints 'value: 2'.
  switch (i) {
    case NumberE(:var value): print("value: $value"); // Prints 'value: 2'.
  }
}