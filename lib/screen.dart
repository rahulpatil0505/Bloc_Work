import 'package:blockdemoapi/block/appblock.dart';
import 'package:blockdemoapi/block/event.dart';
import 'package:blockdemoapi/block/state.dart';
import 'package:blockdemoapi/model.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'api.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<UserBloc>(
            create: (context) => UserBloc(UserData()),
          ),
        ],
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Bloc Demo"),
          ),
          body: blocBody(),
        ));
  }

  Widget blocBody() {
    return BlocProvider(
      create: (context) => UserBloc(
        UserData(),
      )..add(Loadevent()),
      child: BlocBuilder<UserBloc, UserStates>(
        builder: (context, state) {
          if (state is UserLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is UserError) {
            return const Center(
              child: Text('Error'),
            );
          }
          if (state is UserLoded) {
            List<Data> userList = state.users;
            return ListView.builder(
              itemCount: userList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(5),
                  child: Card(
                    child: ListTile(
                      title: Text(
                          "${userList[index].firstName} ${userList[index].lastName}"),
                      subtitle: Text("${userList[index].lastName}"),
                      leading: CircleAvatar(
                        backgroundImage:
                            NetworkImage(userList[index].avatar.toString()),
                      ),
                    ),
                  ),
                );
              },
            );
          }
          return Container(
            color: Colors.black,
          );
        },
      ),
    );
  }
}


/// use flutterBloc for bloc provider and multi bloc provider
/// 