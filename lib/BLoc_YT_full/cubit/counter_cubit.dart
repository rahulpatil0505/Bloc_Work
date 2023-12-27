import 'package:flutter_bloc/flutter_bloc.dart';

class ConuterCubit extends Cubit<int> {
  ConuterCubit() : super(0);

  void Increment() {
    print("Before Cubit: $state");
    emit(state + 1);
    print("after Cubit: $state");
  }

  void Decrement() {
    if (state == 0) {
      return;
    }
    print("Befor Cubit: $state");
    emit(state - 1);
    print("After Cubit: $state");
  }
}
