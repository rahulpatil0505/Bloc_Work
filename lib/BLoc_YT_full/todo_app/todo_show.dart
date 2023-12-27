import 'package:blockdemoapi/BLoc_YT_full/todo_app/cubit/todo_cubit.dart';
import 'package:blockdemoapi/BLoc_YT_full/todo_app/model/todo_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'add_todo.dart';

class TodoDisplay extends StatefulWidget {
  const TodoDisplay({super.key});

  @override
  State<TodoDisplay> createState() => _TodoDisplayState();
}

class _TodoDisplayState extends State<TodoDisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TODO"),
      ),
      floatingActionButton: Container(
        height: 40,
        width: 120,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddTodo(),
                ));
          },
          child: Text("Add Todo"),
        ),
      ),
      body: BlocBuilder<TodoCubit, List<TOdoModel>>(
        builder: (context, todos) {
          return ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context, index) {
              final todo = todos[index];

              return ListTile(
                title: Text(
                  todo.name,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(todo.createdAt.toString()),
              );
            },
          );
        },
      ),
    );
  }
}
