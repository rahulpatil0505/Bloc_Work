import 'package:flutter_bloc/flutter_bloc.dart';

part 'Counter_event.dart';

class CounterBloc extends Bloc<CounterEventss, int> {
  CounterBloc() : super(0) {
    on<CounterIncremeted>((event, emit) {
      print("Before in Bloc :$state");
      emit(state + 1);
      print("After in Bloc :$state");
    });

    on<CounterDecrement>(
      (event, emit) {
        if (state == 0) {
          return;
        }
        print("before in bloc:$state");
        emit(state - 1);
        print("Afetr in bloc: $state");
      },
    );
  }
}
