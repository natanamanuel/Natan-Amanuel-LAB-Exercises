class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  void printInfo() {
    print("Name: $name, Age: $age, Address: $address");
  }
}

class Student extends Person {
  int rollNumber;
  List<double> marks;

  Student(String name, int age, String address, this.rollNumber, this.marks)
      : super(name, age, address);

  double calculateTotalMarks() {
    double total = 0.0;
    for (double mark in marks) {
      total += mark;
    }
    return total;
  }

  double calculateAverage() {
    if (marks.isEmpty) return 0.0;
    return calculateTotalMarks() / marks.length;
  }
}

void main() {
  // Create Student objects
  List<double> marks1 = [80.0, 75.0, 90.0];
  Student student1 = Student("Alice", 20, "123 Main St", 123, marks1);

  List<double> marks2 = [70.0, 85.0, 88.0];
  Student student2 = Student("Bob", 21, "456 Elm St", 456, marks2);

  // Access Person properties (inherited)
  student1.age = 21; // Change Alice's age

  // Use Student methods
  double totalMarks1 = student1.calculateTotalMarks();
  double average1 = student1.calculateAverage();

  double totalMarks2 = student2.calculateTotalMarks();
  double average2 = student2.calculateAverage();

  // Print information
  student1.printInfo();
  print(
      "Roll Number: ${student1.rollNumber}, Total Marks: $totalMarks1, Average: $average1");

  student2.printInfo();
  print(
      "Roll Number: ${student2.rollNumber}, Total Marks: $totalMarks2, Average: $average2");
}
