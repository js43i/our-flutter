void main(List<String> args) {

var message = StringBuffer('Dart is fun');
for (var i = 0; i < 5; i++) {
  message.write('!');
}

var callbacks = [];
for (var i = 0; i < 2; i++) {
  callbacks.add(() => print(i));
}

for (final c in callbacks) {
  c();
}


var collection = [1, 2, 3];
collection.forEach(print); // 1 2 3

//do {
 // printLine();
//} while (!atEndOfPage());

//while (true) {
 // if (shutDownRequested()) break;
 // processIncomingRequests();}

//for (int i = 0; i < candidates.length; i++) {
 // var candidate = candidates[i];
 // if (candidate.yearsExperience < 5) {
  //  continue; }
 // candidate.interview();
 }
