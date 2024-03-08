void main() {
  
  print("Enter your grade (0-100): ");
  int grade = int.parse(stdin.readLineSync()!);

  // Convert grade to letter grade using switch statement
  switch (grade) {
    case 90...100:
      print("Letter grade: A");
      break;
    case 80...89:
      print("Letter grade: B");
      break;
    case 70...79:
      print("Letter grade: C");
      break;
    case 60...69:
      print("Letter grade: D");
      break;
    case 0...59:
      print("Letter grade: F");
      break;
    default:
      print("Invalid grade!");
  }
}