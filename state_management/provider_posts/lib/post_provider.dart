import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'post.dart';
import 'dart:convert'; // Import dart:convert for jsonDecode

class PostProvider with ChangeNotifier {
  List<Post> _posts = [];

  List<Post> get posts => _posts;

  Future<void> fetchPosts() async {
    final url = Uri.https('jsonplaceholder.typicode.com', 'posts');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> decodedData = jsonDecode(response.body);
      _posts = decodedData.map((data) => Post.fromJson(data)).toList();
      notifyListeners();
    } else {
      // handle error
      print('Error: ${response.reasonPhrase}');
    }
  }
}
