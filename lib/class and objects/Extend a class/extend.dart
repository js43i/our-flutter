class Television {
  void turnOn() {
    //_illuminateDisplay();
    //_activateIrSensor();
  }
  // ···
}

class SmartTelevision extends Television {
  void turnOn() {
    super.turnOn();
   // _bootNetworkInterface();
   // _initializeMemory();
    //_upgradeApps();
  }
  // ···
}


class A {
  // Unless you override noSuchMethod, using a
  // non-existent member results in a NoSuchMethodError.
  @override
  void noSuchMethod(Invocation invocation) {
    print('You tried to use a non-existent member: '
        '${invocation.memberName}');
  }
}