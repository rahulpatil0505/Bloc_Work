import 'package:flutter/material.dart';

import 'bloc_api_YT/post/home.dart';
import 'bloc_api_YT/post/ui.dart';
import 'block3_api/screen.dart';
import 'counterButton_bloc/ui/CounterPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocgetApi(),
    );
  }
}
