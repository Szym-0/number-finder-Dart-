import 'package:flutter/material.dart';

import '../Widgets/input.dart';

class Start extends StatelessWidget {
  const Start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'NumbersApp',
        ),
      ),
      body: Column(
        children: const [
          Input(),
          SizedBox(
            height: 30,
          ),
          Text('Input string of numbers in this format:'),
          Text(' 1, 2, 3, 4, 5, 6, 7'),
          Text('Remember to put only one "weird" number'),
          Text('like is definied in the task ;)'),
        ],
      ),
    );
  }
}
