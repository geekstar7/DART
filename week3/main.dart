void main() {
  // Encapsulation
  var account = BankAccount();
  account.deposit(500);
  account.withdraw(200);
  print("Current Balance: \$${account.balance}");

  // Inheritance
  var myCar = Car();
  myCar.start();
  myCar.honk();
  myCar.stop();

  // Polymorphism
  List<Animal> animals = [Dog(), Cat()];
  for (var animal in animals) {
    animal.speak();
  }

  // Abstraction
  Shape circle = Circle(5);
  Shape rectangle = Rectangle(4, 6);
  circle.describe();
  print("Area: ${circle.getArea()}");
  rectangle.describe();
  print("Area: ${rectangle.getArea()}");
}
