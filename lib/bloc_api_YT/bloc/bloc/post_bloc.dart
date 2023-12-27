import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';

import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;

import '../../models/model.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc() : super(PostInitial()) {
    on<FetchPostsInitial>(fetchPostsInitial);
  }

  FutureOr<void> fetchPostsInitial(
      FetchPostsInitial event, Emitter<PostState> emit) async {
    var client = http.Client();
    List<PostDataModel> posts = [];
    try {
      var response = await client
          .get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
      print(response.body);

      List result = jsonDecode(response.body);
      for (int i = 0; i < result.length; i++) {
        PostDataModel post =
            PostDataModel.fromJson(result[i] as Map<String, dynamic>);
        posts.add(post);
      }
      emit(PostFetchingSucessfulState(posts: posts));
      print(posts);
    } catch (e) {
      log(e.toString());
    }
  }
}
