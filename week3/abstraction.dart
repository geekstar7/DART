abstract class Shape {
  double getArea(); // Abstract method
  void describe();  // Abstract method
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double getArea() => 3.1416 * radius * radius;

  @override
  void describe() => print("This is a circle.");
}

class Rectangle extends Shape {
  double width, height;

  Rectangle(this.width, this.height);

  @override
  double getArea() => width * height;

  @override
  void describe() => print("This is a rectangle.");
}
