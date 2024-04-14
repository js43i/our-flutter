/// Sets the [bold] and [hidden] flags ...
//void enableFlags(bool bold == false, bool hidden == false) {


//}


//const Scrollbar({super.key, required Widget child});

String say(String from, String msg, [String? device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}
//assert(say('Bob', 'Howdy') == 'Bob says Howdy');
//assert(say('Bob', 'Howdy', 'smoke signal') ==
    //'Bob says Howdy with a smoke signal');

    String say1(String from, String msg, [String device = 'carrier pigeon']) {
  var result = '$from says $msg with a $device';
  return result;
}

//assert(say('Bob', 'Howdy') == 'Bob says Howdy with a carrier pigeon');

// Run the app like this: dart run args.dart 1 test
void main(List<String> arguments) {
  print(arguments);

  assert(arguments.length == 2);
  assert(int.parse(arguments[0]) == 1);
  assert(arguments[1] == 'test');
}