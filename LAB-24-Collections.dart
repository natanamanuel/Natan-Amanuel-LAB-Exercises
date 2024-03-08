void main() {
  Map<String, int> students = {};

  students.putIfAbsent("Alice", () => 85);
  students.putIfAbsent("Bob", () => 90);

  students.forEach((name, mark) => print("$name: $mark"));

  if (students.containsKey("Charlie")) {
    print("Charlie's mark: ${students["Charlie"]}");
  } else {
    print("Charlie is not in the map.");
  }
}
