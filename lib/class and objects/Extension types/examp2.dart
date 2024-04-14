
void main () {
  // All OK: Transparency allows invoking `int` members on the extension type:
  //var v1 = NumberT(1); // v1 type: NumberT
  //int v2 = NumberT(2); // v2 type: int
  //var v3 = v1.i - v1;  // v3 type: int
  //var v4 = v2 + v1; // v4 type: int
 // var v5 = 2 + v1; // v5 type: int
  // Error: Extension type interface is not available to representation type

}

