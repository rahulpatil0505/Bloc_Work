import 'package:blockdemoapi/counterButton_bloc/bloc/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  CounterBloc counterBloc = CounterBloc();
  @override
  void initState() {
    counterBloc.add(CounterIncrementevent());
    super.initState();
  }

  int val = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Bloc"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterBloc.add(CounterIncrementevent());
          print("Pressed");
        },
        child: Icon(Icons.add),
      ),
      body: BlocConsumer<CounterBloc, CounterState>(
        listenWhen: (previous, current) => current is CounterActionState,
        buildWhen: (previous, current) => current is! CounterActionState,
        bloc: counterBloc,
        listener: (context, state) {
          // TODO: implement listener
          if (state is CounterShowSnackbarActionState) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text("Snack open")));
          }
        },
        builder: (context, state) {
          switch (state.runtimeType) {
            case CounterIncrementState:
              final sucessState = state as CounterIncrementState;
              return Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    sucessState.val.toString(),
                    style: TextStyle(fontSize: 40),
                  )
                ],
              ));
            default:
              return Text("Not Pressed");
          }
        },
      ),

      //  BlocListener<CounterBloc, CounterState>(
      //   bloc: counterBloc,
      //   listener: (context, state) {
      // if (state is CounterShowSnackbarActionState) {
      //   ScaffoldMessenger.of(context)
      //       .showSnackBar(SnackBar(content: Text("Snack open")));
      //     } else if (state is CounterIncrementActionState) {
      //       setState(() {
      //         val = val + 1;
      //       });
      //     }
      //   },
      //   child: Center(
      //       child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text(
      //         val.toString(),
      //         style: TextStyle(fontSize: 40),
      //       ),
      // SizedBox(
      //   height: 25,
      // ),
      // ElevatedButton(
      //     onPressed: () {
      //       counterBloc.add(CounterIncrementevent());
      //       print(val);
      //     },
      //     child: Text("Add")),
      // ElevatedButton(
      //     onPressed: () {
      //       counterBloc.add(CounterShowSnackbarEvent());
      //     },
      //     child: Text("Snackbars"))
      //     ],
      //   )),
      // )

      //  BlocBuilder<CounterBloc, CounterState>(
      //   bloc: counterBloc,
      //   builder: (context, state) {
      //     switch (state.runtimeType) {
      //       case CounterIncrementState:
      //         final sucessState = state as CounterIncrementState;
      // return Center(
      //     child: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Text(
      //       sucessState.val.toString(),
      //       style: TextStyle(fontSize: 40),
      //     )
      //   ],
      // ));
      //       default:
      //         return Text("Not Pressed");
      //     }
      //   },
      // ),
    );
  }
}
