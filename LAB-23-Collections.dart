import 'dart:math';

void main() {
  List<int> numbers = [];
  Random random = Random();
  for (int i = 0; i < 10; i++) {
    numbers.add(random.nextInt(10)); // Generate random numbers
  }
  print("Original list: $numbers");

  Set<int> uniqueNumbers =
      numbers.toSet(); // Convert to Set and remove duplicates
  print("Unique numbers: $uniqueNumbers");
}
