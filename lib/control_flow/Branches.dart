
void main(List<String> args) {
  
  //if (isRaining()) {
 // you.bringRainCoat();
//} else if (isSnowing()) {
 // you.wearJacket();
//} else {
//  car.putTopDown();
//}

//if (pair case [int x, int y]) return Point(x, y);

//if (pair case [int x, int y]) {
 // print('Was coordinate array $x,$y');
//} else {
  throw FormatException('Invalid coordinates.');
}
class A{
var command = 'OPEN';

// Where slash, star, comma, semicolon, etc., are constant variables...
//switch (charCode) {
  //case slash || star || plus || minus: // Logical-or pattern
  //  token = operator(charCode);
  //case comma || semicolon: // Logical-or pattern
  //  token = punctuation(charCode);
 // case >= digit0 && <= digit9: // Relational and logical-and patterns
 //   token = number();
 // default:
  //  throw FormatException('Invalid');
}


 class Shape {}

class Square implements Shape {
  final double length;
  Square(this.length);
}

class Circle implements Shape {
  final double radius;
  Circle(this.radius);
}

//double calculateArea(Shape shape) => switch (shape) {
 //     Square(length: var l) => l * l,
  //    Circle(radius: var r) => math.pi * r * r
 //   };

    // Switch statement:
//switch (something) {
 // case somePattern when some || boolean || expression:
    //             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ Guard clause.
 //   body;
//}

// Switch expression:
//var value = switch (something) {
 // somePattern when some || boolean || expression => body,
  //               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ Guard clause.
//}

// If-case statement:
//if (something case somePattern when some || boolean || expression) {
  //                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ Guard clause.
 // body;
//}