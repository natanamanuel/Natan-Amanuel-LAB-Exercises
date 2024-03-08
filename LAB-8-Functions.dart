bool isPrime(int number) {
  if (number <= 1) return false;
  for (int i = 2; i * i <= number; i++) {
    if (number % i == 0) return false;
  }
  return true;
}

void main() {
  // Get user input for range
  print("Enter the lower limit of the range: ");
  int lowerLimit = int.parse(stdin.readLineSync()!);

  print("Enter the upper limit of the range (inclusive): ");
  int upperLimit = int.parse(stdin.readLineSync()!);

  // Check for prime numbers in the range
  print("Prime numbers in the range $lowerLimit to $upperLimit:");
  for (int i = lowerLimit; i <= upperLimit; i++) {
    if (isPrime(i)) {
      print(i);
    }
  }
}
