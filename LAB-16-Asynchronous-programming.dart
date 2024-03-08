import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> downloadFile(String url, String filename) async {
  // Create the request
  http.Client client = http.Client();
  http.Response response = await client.get(Uri.parse(url));

  // Check for errors
  if (response.statusCode != 200) {
    print("Error downloading file: ${response.statusCode}");
    return;
  }

  // Save the file
  File file = File(filename);
  await file.writeAsBytes(response.bodyBytes);
  print("File downloaded successfully: $filename");
}

void main() async {
  String url = "https://example.com/file.zip"; // Replace with a valid URL
  String filename = "downloaded_file.zip";
  await downloadFile(url, filename);
}
