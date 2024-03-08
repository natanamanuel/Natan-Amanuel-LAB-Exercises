void main() {
  print("Enter the first number: ");
  double num1 = double.parse(stdin.readLineSync()!);

  print("Enter the operator (+, -, *, /): ");
  String operator = stdin.readLineSync()!;

  print("Enter the second number: ");
  double num2 = double.parse(stdin.readLineSync()!);

  // Perform calculation based on operator using switch statement
  switch (operator) {
    case "+":
      print("$num1 + $num2 = ${num1 + num2}");
      break;
    case "-":
      print("$num1 - $num2 = ${num1 - num2}");
      break;
    case "*":
      print("$num1 * $num2 = ${num1 * num2}");
      break;
    case "/":
      if (num2 == 0) {
        print("Error: Division by zero!");
      } else {
        print("$num1 / $num2 = ${num1 / num2}");
      }
      break;
    default:
      print("Invalid operator!");
  }
}
