import 'package:blockdemoapi/BLoc_YT_full/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/counter_cubit.dart';

class IncrementDecrement extends StatelessWidget {
  const IncrementDecrement({super.key});

  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
        floatingActionButton: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          heroTag: 1,
          onPressed: () {
            counterBloc.add(CounterIncremeted());
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
        const SizedBox(
          height: 10,
        ),
        FloatingActionButton(
          heroTag: 2,
          onPressed: () {
            counterBloc.add(CounterDecrement());
          },
          tooltip: 'Decrement',
          child: const Icon(Icons.minimize_rounded),
        ),
      ],
    ));
  }
}
