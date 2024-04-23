import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'post.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

part 'post_bloc.g.dart'; // Generated bloc code

enum PostEvent { fetchPosts }

abstract class PostState extends Equatable {
  const PostState();

  @override
  List<Object?> get props => [];
}

class PostInitial extends PostState {}

class PostLoading extends PostState {}

class PostLoaded extends PostState {
  final List<Post> posts;

  const PostLoaded(this.posts);

  @override
  List<Object?> get props => [posts];
}

class PostError extends PostState {
  final String message;

  const PostError(this.message);

  @override
  List<Object?> get props => [message];
}

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc() : super(const PostInitial()) {
    on<PostEvent>((event, emit) async {
      if (event == PostEvent.fetchPosts) {
        emit(const PostLoading());
        try {
          final url = Uri.https('jsonplaceholder.typicode.com', 'posts');
          final response = await http.get(url);

          if (response.statusCode == 200) {
            final List<dynamic> decodedData = jsonDecode(response.body);
            final posts =
                decodedData.map((data) => Post.fromJson(data)).toList();
            emit(PostLoaded(posts));
          } else {
            emit(PostError('Error: ${response.reasonPhrase}'));
          }
        } catch (error) {
          emit(PostError(error.toString()));
        }
      }
    });
  }
}
