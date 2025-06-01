///✅ Benefits of Factory Pattern
///Hides the instantiation logic.

///Makes the code easier to manage and extend.

///Promotes loose coupling (you depend on abstractions, not concrete classes).

///Adds flexibility in selecting which class to instantiate at runtime.

abstract class Engine {
  void start();
  void stop();
}

enum Vehicle { Car, Bike }

class Car extends Engine {
  @override
  void start() {
    print("Starting Car Engine");
  }

  @override
  void stop() {
    print("Stop Car Engine");
  }
  
}

class Bike extends Engine {
  @override
  void start() {
    print("Starting Bike Engine");
  }

  @override
  void stop() {
    print("Stop Bike Engine");
  }
}

class EngineFactory {
  static Engine create(Vehicle vehicle) {
    switch(vehicle) {
      case Vehicle.Car:
        return Car();
      case Vehicle.Bike:
        return Bike();
    }
  }
}

void main() {
  Engine engine = EngineFactory.create(Vehicle.Bike);
  engine.start();
  engine.stop();

  Engine engineTwo = EngineFactory.create(Vehicle.Car);
  engineTwo.start();
  engineTwo.stop();
}