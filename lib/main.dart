import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app/counter/bloc/counter_bloc.dart';
import 'package:flutter_bloc_app/counter/pages/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: MultiBlocProvider(
        providers: [BlocProvider(create: (context) => CounterBloc())],
        child: CounterScreen(),
      ),
    );
  }
}
