import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'post_bloc.dart';
import 'post.dart';
import 'post_details.dart';

class PostList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PostBloc()..add(PostEvent.fetchPosts),
      child: BlocBuilder<PostBloc, PostState>(
        builder: (context, state) {
          if (state is PostInitial) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is PostLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is PostLoaded) {
            final posts = state.posts;
            return ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                final post = posts[index];
                return ListTile(
                  title: Text(post.title),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PostDetails(post: post),
                    ),
                  ),
                );
              },
            );
          } else if (state is PostError) {
            return Center(
              child: Text('Error: ${state.message}'),
            );
          } else {
            return const Text('Unexpected state');
          }
        },
      ),
    );
  }
}
