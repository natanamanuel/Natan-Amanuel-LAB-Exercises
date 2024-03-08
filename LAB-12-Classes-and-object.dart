class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double calculateArea() {
    return width * height;
  }

  double calculatePerimeter() {
    return 2 * (width + height);
  }
}

void main() {
  // Create a Rectangle object
  Rectangle rectangle = Rectangle(5.0, 10.0);

  // Calculate and print area and perimeter
  double area = rectangle.calculateArea();
  double perimeter = rectangle.calculatePerimeter();

  print("Area of the rectangle: $area");
  print("Perimeter of the rectangle: $perimeter");
}
