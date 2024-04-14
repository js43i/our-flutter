var list = [1, 2, 3];

var list1 = [
  'Car',
  'Boat',
  'Plane',
];

var list2 = [1, 2, 3];
//assert(list.length == 3);
//assert(list[1] == 2);

//list[1] = 1;
//assert(list[1] == 1);

var constantList = const [1, 2, 3];
// constantList[1] = 1; // This line will cause an error.

var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};

var names = <String>{};
// Set<String> names = {}; // This works, too.
// var names = {}; // Creates a map, not a set.
void main(List<String> args) {
  

var elements1 = <String>{};
//elements.add('fluorine');
//elements.addAll(halogens);

var elements = <String>{};
elements.add('fluorine');
elements.addAll(halogens);
assert(elements.length == 5);

final constantSet = const {
  'fluorine',
  'chlorine',
  'bromine',
  'iodine',
  'astatine',
};
// constantSet.add('helium'); // This line will cause an error.

var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 'golden rings'
};

var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 'argon',
};

var gifts2 = Map<String, String>();
gifts['first'] = 'partridge';
gifts['second'] = 'turtledoves';
gifts['fifth'] = 'golden rings';

//var nobleGases = Map<int, String>();
nobleGases[2] = 'helium';
nobleGases[10] = 'neon';
nobleGases[18] = 'argon';


//var gifts = {'first': 'partridge'};
//gifts['fourth'] = 'calling birds'; // Add a key-value pair

var gifts1 = {'first': 'partridge'};
//assert(gifts['fifth'] == null);

//var gifts2 = {'first': 'partridge'};
//assert(gifts['fifth'] == null);

var gifts3 = {'first': 'partridge'};
//gifts['fourth'] = 'calling birds';
//assert(gifts.length == 2);

final constantMap = const {
  2: 'helium',
  10: 'neon',
  18: 'argon',
};

// constantMap[2] = 'Helium'; // This line will cause an error.

var list5 = [1, 2, 3];
var list6 = [0, ...list];
//assert(list2.length == 4);

var nav = ['Home', 'Furniture', 'Plants'];
var nav1 = ['Home', 'Furniture', 'Plants',  'Inventory'];
var listOfInts = [1, 2, 3];
var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
//assert(listOfStrings[1] == '#1');

}