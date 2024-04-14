import 'package:gitpod_flutter_quickstart/introduction/class.dart';

class Spacecraft{
var name,launchDate;

}
mixin Piloted {
  int astronauts = 1;

  void describeCrew() {
    print('Number of astronauts: $astronauts');
  }
}
class PilotedCraft extends Spacecraft with Piloted {
  // ···
}