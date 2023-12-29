import 'package:blockdemoapi/BLoc_YT_full/Bloc_validation_app/bloc/bloc_observer.dart';
import 'package:blockdemoapi/BLoc_YT_full/Weather_app/Data/provider/weather_provider.dart';
import 'package:blockdemoapi/BLoc_YT_full/Weather_app/Data/repository/weather_repositry.dart';
import 'package:blockdemoapi/BLoc_YT_full/Weather_app/bloc/weather_bloc.dart';
import 'package:blockdemoapi/BLoc_YT_full/bloc/counter_bloc.dart';
import 'package:blockdemoapi/BLoc_YT_full/cubit/counter_cubit.dart';
import 'package:blockdemoapi/BLoc_YT_full/todo_app/cubit/todo_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'BLoc_YT_full/Bloc_validation_app/Loginscreen.dart';
import 'BLoc_YT_full/Bloc_validation_app/bloc/authentication_bloc.dart';

import 'BLoc_YT_full/Weather_app/Ui_part/Screens/Weather_screen.dart';
import 'BLoc_YT_full/Weather_app/Ui_part/Screens/Weather_with_bloc.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        // RepositoryProvider(
        //   create: (context) => WeatherRepository(WeatherDataProvider()),
        //   child: BlocProvider(
        //     create: (context) => WeatherBloc(context.read<WeatherRepository>()),
        //     child: MaterialApp(
        //       debugShowCheckedModeBanner: false,
        //       theme: ThemeData.dark(useMaterial3: true),
        //       home: LoginScreen(),
        //     ),
        //   ),
        // );

        MultiBlocProvider(
      providers: [
        BlocProvider<CounterBloc>(
          create: (_) => CounterBloc(),
        ),
        BlocProvider<ConuterCubit>(
          create: (_) => ConuterCubit(),
        ),
        BlocProvider<TodoCubit>(
          create: (_) => TodoCubit(),
        ),
        BlocProvider<AuthenticationBloc>(
          create: (_) => AuthenticationBloc(),
        ),
        RepositoryProvider<WeatherRepository>(
          create: (context) => WeatherRepository(WeatherDataProvider()),
          child: BlocProvider<WeatherBloc>(
            create: (context) => WeatherBloc(context.read<WeatherRepository>()),
          ),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData.dark(useMaterial3: true),
        // Use Material 3 design

        home: LoginScreen(),
        // home: CounterPage(),
      ),
    );
  }
}
