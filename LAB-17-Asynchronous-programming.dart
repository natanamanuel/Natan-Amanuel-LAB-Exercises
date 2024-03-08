import 'dart:async';

Future<List<String>> loadData() async {
  await Future.delayed(Duration(seconds: 3)); // Simulate database delay
  return ["Item 1", "Item 2", "Item 3"]; // Example data
}

void main() async {
  List<String> data = await loadData();
  print("Loaded data: $data");
}
