abstract class Vehicle {
  void startEngine();
}

class Car extends Vehicle {
  @override
  void startEngine() {
    print('Car startEngine');
  }
}

class Motorbike extends Vehicle {
  @override
  void startEngine() {
    print('Motobike startEngine');
  }
}
