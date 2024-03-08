class Person {
  String name;
  int age;
  String address;

  // Constructor to initialize properties
  Person(this.name, this.age, this.address);

  // Method to print person information
  void printInfo() {
    print("Name: $name, Age: $age, Address: $address");
  }
}

void main() {
  // Create Person objects
  Person person1 = Person("Alice", 30, "123 Main St");
  Person person2 = Person("Bob", 25, "456 Elm St");

  // Access and modify properties
  person1.age = 31; // Change Alice's age

  // Call printInfo method to display information
  person1.printInfo();
  person2.printInfo();
}
