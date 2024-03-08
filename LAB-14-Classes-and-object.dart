abstract class Shape {
  double calculateArea();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }
}

class Square extends Shape {
  double side;

  Square(this.side);

  @override
  double calculateArea() {
    return side * side;
  }
}

void main() {
  // Create Shape objects (not possible for abstract classes)
  Circle circle = Circle(5.0);
  Square square = Square(4.0);

  // Calculate and print areas
  double circleArea = circle.calculateArea();
  double squareArea = square.calculateArea();

  print("Area of the circle: $circleArea");
  print("Area of the square: $squareArea");
}
