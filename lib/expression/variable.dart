var name = 'Bob';
Object name2 = 'Bob';
String name3 = 'Bob';
int? lineCount;
//if (weLikeToCount) {
// lineCount = countLines();
//} else {
//lineCount = 0;
//}

//print(lineCount);
late String description;

void main() {
  description = 'Feijoada!';
  print(description);
}

// This is the program's only call to readThermometer().
//late String temperature = readThermometer(); // Lazily initialized.
final name7 = 'Bob'; // Without a type annotation
final String nickname = 'Bobby';
const bar = 1000000; // Unit of pressure (dynes/cm2)
const double atm = 1.01325 * bar; // Standard atmosphere
const baz = []; // Equivalent to `const []`0
var foo = [1, 2, 3]; // Was const []
const Object i = 3; // Where i is a const Object with an int value...
const list = [i as int]; // Use a typecast.
const map = {if (i is int) i: 'int'}; // Use is and collection if.
const set = {if (list is List<int>) ...list}; // ...and a spread.