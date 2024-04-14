import 'package:flutter/cupertino.dart';

var a = 0;
var b = ++a; // Increment a before b gets its value.
//assert(a == b); // 1 == 1

var a1 = 0;
var b1 = a1++; // Increment a after b gets its value.
//assert(a != b); // 1 != 0

var a2 = 0;
var b2 = --a2; // Decrement a before b gets its value.
//assert(a == b); // -1 == -1

var a3 = 0;
var b3 = a3--; // Decrement a after b gets its value.
//assert(a != b); // -1 != 0

var a4 = 2; // Assign using =
//a4 *= 3; // Assign and multiply: a = a * 3
//assert(a == 6);

final value = 0x22;
final bitmask = 0x0f;

//assert((value & bitmask) == 0x02); // AND
//assert((value & ~bitmask) == 0x20); // AND NOT
//assert((value | bitmask) == 0x2f); // OR
//assert((value ^ bitmask) == 0x2d); // XOR

//assert((value << 4) == 0x220); // Shift left
//assert((value >> 4) == 0x02); // Shift right

// Shift right example that results in different behavior on web
// because the operand value changes when masked to 32 bits:
//assert((-value >> 4) == -0x03);

//assert((value >>> 4) == 0x02); // Unsigned shift right
//assert((-value >>> 4) > 0); // Unsigned shift right

// Slightly longer version uses ?: operator.
String playerName(String? name) => name != null ? name : 'Guest';

// Very long version uses if-else statement.
String playerName1(String? name) {
  if (name != null) {
    return name;
  } else {
    return 'Guest';
  }
}

var AddressBookBuilder;
final addressBook = (AddressBookBuilder()
      ..name = 'jenny'
      ..email = 'jenny@example.com'
      //..phone = (PhoneNumberBuilder()
      ..number = '415-555-0100'
      ..label = 'home')
    .build()
    .build();
   
//var sb = StringBuffer();
//sb.write('foo')
 // ..write('bar'); // Error: method 'write' isn't defined for 'void'.