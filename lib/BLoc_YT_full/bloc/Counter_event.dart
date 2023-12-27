part of "counter_bloc.dart";

sealed class CounterEventss {}

final class CounterDecrement extends CounterEventss {}

final class CounterIncremeted extends CounterEventss {}
