void main() {
  try {
    print("Enter a numerator: ");
    int numerator = int.parse(stdin.readLineSync()!);
    print("Enter a denominator: ");
    int denominator = int.parse(stdin.readLineSync()!);
    double result = divideNumbers(numerator, denominator);
    print("Result: $result");
  } on FormatException catch (e) {
    print("Invalid input: Please enter valid integers.");
  } on DivisionByZeroError catch (e) {
    print("Error: Cannot divide by zero.");
  }
}

double divideNumbers(int a, int b) {
  if (b == 0) {
    throw DivisionByZeroError();
  } else {
    return a / b;
  }
}
