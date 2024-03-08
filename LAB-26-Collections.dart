class Student {
  final String name;
  final List<int> marks;

  Student(this.name, this.marks);

  double calculateAverageMark() {
    if (marks.isEmpty) {
      return 0.0; // Handle case with no marks
    }
    double sum = marks.reduce(double add(int a, int b) => a + b.toDouble()); // Sum marks
    return sum / marks.length; // Calculate average
  }
}

void main() {
  List<int> marks = [80, 95, 78];
  Student student = Student("Alice", marks);

  double averageMark = student.calculateAverageMark();
  print("Average mark for ${student.name}: $averageMark");
}