import 'package:flutter/material.dart';
import 'package:numbers/Providers/numbers_actions.dart';
import 'package:numbers/Screens/result_screen.dart';

import 'package:provider/provider.dart';

import './Screens/primary.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListenableProvider(
      create: (_) => Numbers(),
      child: MaterialApp(
          title: 'NumbersApp',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const Start(),
          routes: {
            ResultScreen.routeName: (context) => const ResultScreen(),
          }),
    );
  }
}
