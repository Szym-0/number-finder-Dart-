import 'package:flutter/material.dart';
import 'package:numbers/Screens/result_screen.dart';

import 'package:provider/provider.dart';

import '../Providers/numbers_actions.dart';

class Input extends StatelessWidget {
  const Input({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController numbersController = TextEditingController();

    return Column(children: [
      const SizedBox(
        height: 50,
      ),
      TextFormField(
        controller: numbersController,
      ),
      const SizedBox(
        height: 50,
      ),
      ElevatedButton(
        onPressed: () => numberCheck(numbersController.text, context),
        child: const Text(
          'Wyszukaj',
        ),
      ),
    ]);
  }

  Future<void> numberCheck(String input, BuildContext ctx) async {
    if (input.isEmpty) {
      ScaffoldMessenger.of(ctx).showSnackBar(
        const SnackBar(
          content: Text('Insert Something'),
        ),
      );
      return;
    }

    int? result;
    try {
      result = await Provider.of<Numbers>(ctx, listen: false).workWithIt(input);
    } catch (e) {
      ScaffoldMessenger.of(ctx).showSnackBar(
        const SnackBar(
          content: Text('Something gone wrong!'),
        ),
      );
      return;
    }
    Navigator.pushNamed(ctx, ResultScreen.routeName, arguments: result);
  }
}
