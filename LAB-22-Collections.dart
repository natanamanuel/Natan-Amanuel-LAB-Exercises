void main() {
  List<String> hobbies = ["Reading", "Coding", "Hiking", "Gaming"];

  // Add a new hobby
  hobbies.add("Traveling");
  print("Hobbies after adding: $hobbies");

  // Remove a hobby (by index)
  hobbies.removeAt(2); // Remove "Hiking"
  print("Hobbies after removing: $hobbies");

  // Sort the list alphabetically
  hobbies.sort();
  print("Hobbies sorted: $hobbies");

  // Check if the list is empty
  if (hobbies.isEmpty) {
    print("No hobbies in the list!");
  } else {
    print("You have ${hobbies.length} hobbies.");
  }
}
