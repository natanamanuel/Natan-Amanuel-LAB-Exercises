void main() {
  try {
    print("Enter a number: ");
    String input = stdin.readLineSync()!;
    int number = int.parse(input);
    print("You entered the number: $number");
  } on FormatException catch (e) {
    print("Invalid input: Please enter a valid integer.");
  }
}
