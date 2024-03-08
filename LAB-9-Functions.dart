String reverseString(String str) {
  String reversed = "";
  for (int i = str.length - 1; i >= 0; i--) {
    reversed += str[i];
  }
  return reversed;
}

void main() {
  // Get user input for a string
  print("Enter a string: ");
  String str = stdin.readLineSync()!;

  // Call the reverseString function and print the result
  String reversedString = reverseString(str);
  print("The reversed string is: $reversedString");
}
