int addNumbers(int num1, int num2) {
  return num1 + num2;
}

void main() {
  // Get user input for numbers
  print("Enter the first number: ");
  int num1 = int.parse(stdin.readLineSync()!);

  print("Enter the second number: ");
  int num2 = int.parse(stdin.readLineSync()!);

  // Call the addNumbers function and print the result
  int sum = addNumbers(num1, num2);
  print("The sum of $num1 and $num2 is: $sum");
}
