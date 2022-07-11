import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  static const routeName = '/result';

  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final result = ModalRoute.of(context)!.settings.arguments as int;

    return Column(
      children: [
        Expanded(
          child: Center(
            child: Text(result.toString()),
          ),
        ),
        ElevatedButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Get Back'),
        ),
      ],
    );
  }
}
