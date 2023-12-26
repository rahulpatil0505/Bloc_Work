import 'package:blockdemoapi/bloc_api_YT/bloc/bloc/post_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocgetApi extends StatefulWidget {
  const BlocgetApi({super.key});

  @override
  State<BlocgetApi> createState() => _BlocgetApiState();
}

class _BlocgetApiState extends State<BlocgetApi> {
  final PostBloc postBloc = PostBloc();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    postBloc.add(FetchPostsInitial());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Api Post Data"),
      ),
      body: BlocConsumer<PostBloc, PostState>(
        bloc: postBloc,
        listenWhen: (previous, current) => current is PostActionState,
        buildWhen: (previous, current) => current is! PostActionState,
        builder: (context, state) {
          switch (state.runtimeType) {
            case PostFetchingSucessfulState:
              final sucessState = state as PostFetchingSucessfulState;
              return Container(
                  child: ListView.builder(
                itemCount: sucessState.posts.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      children: [
                        Text(sucessState.posts[index].title.toString()),
                        Divider(),
                        Text(sucessState.posts[index].userId.toString())
                      ],
                    ),
                  );
                },
              ));
            default:
              return SizedBox();
          }
        },
        listener: (context, state) {},
      ),
    );
  }
}
