import 'package:blockdemoapi/BLoc_YT_full/bloc/counter_bloc.dart';
import 'package:blockdemoapi/BLoc_YT_full/cubit/counter_cubit.dart';
import 'package:blockdemoapi/BLoc_YT_full/todo_app/cubit/todo_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'BLoc_YT_full/Bloc_validation_app/Loginscreen.dart';
import 'BLoc_YT_full/Bloc_validation_app/bloc/authentication_bloc.dart';
import 'BLoc_YT_full/home_page.dart';
import 'BLoc_YT_full/todo_app/todo_show.dart';
import 'bloc_api_YT/post/ui.dart';
import 'counterButton_bloc/ui/CounterPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CounterBloc()),
        BlocProvider(
          create: (_) => ConuterCubit(),
        ),
        BlocProvider(create: (_) => TodoCubit()),
        BlocProvider(create: (_) => AuthenticationBloc())
      ],
      child: MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: LoginScreen(),
        // home: CounterPage(),
      ),
    );
  }
}
