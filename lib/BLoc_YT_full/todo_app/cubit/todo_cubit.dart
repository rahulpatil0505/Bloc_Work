import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:blockdemoapi/BLoc_YT_full/todo_app/model/todo_model.dart';
import 'package:equatable/equatable.dart';

part 'todo_state.dart';

class TodoCubit extends Cubit<List<TOdoModel>> {
  TodoCubit() : super([]);

  void addtodo(String title) {
    if (title.isEmpty) {
      addError("Title not empty");
    }
    final todo = TOdoModel(name: title, createdAt: DateTime.now());

    emit([...state, todo]);
  }

  @override
  void onChange(Change<List<TOdoModel>> change) {
    super.onChange(change);
    print("TodoCubit - $change");
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    // TODO: implement onError
    super.onError(error, stackTrace);
    print(error);
  }
}
