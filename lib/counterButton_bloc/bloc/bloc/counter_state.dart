// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'counter_bloc.dart';

sealed class CounterState extends Equatable {
  const CounterState();

  @override
  List<Object> get props => [];
}

final class CounterInitial extends CounterState {}

class CounterIncrementState extends CounterState {
  final int val;
  CounterIncrementState({
    required this.val,
  });
}

class CounterIncrementActionState extends CounterState {}

abstract class CounterActionState extends CounterState {}

class CounterShowSnackbarActionState extends CounterActionState {}
