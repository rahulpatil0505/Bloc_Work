part of 'post_bloc.dart';

sealed class PostState extends Equatable {
  const PostState();

  @override
  List<Object> get props => [];
}

final class PostInitial extends PostState {}

abstract class PostActionState extends PostState {}

class PostFetchingSucessfulState extends PostState {
  final List<PostDataModel> posts;

  PostFetchingSucessfulState({required this.posts});
}
