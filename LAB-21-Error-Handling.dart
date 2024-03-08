void main() {
  try {
    print("Enter the file path: ");
    String filePath = stdin.readLineSync()!;
    String fileContents = readFile(filePath);
    print("File contents:\n$fileContents");
  } on FileSystemException catch (e) {
    print("Error reading file: ${e.message}");
  }
}

String readFile(String path) {
  File file = File(path);
  return file.readAsStringSync();
}
