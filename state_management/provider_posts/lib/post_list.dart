import 'package:flutter/material.dart';
import 'post.dart';
import 'post_details.dart';

class PostList extends StatelessWidget {
  final List<Post> posts;

  const PostList({required this.posts});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          final post = posts[index];
          return ListTile(
              title: Text(post.title),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PostDetails(post: post))));
        });
  }
}
