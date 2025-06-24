// Superclass
class Vehicle {
  void start() => print("Vehicle is starting...");
  void stop() => print("Vehicle is stopping...");
}

// Subclass
class Car extends Vehicle {
  void honk() => print("Car is honking!");
}
