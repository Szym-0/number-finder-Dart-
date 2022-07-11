import 'package:flutter/foundation.dart';

class Numbers with ChangeNotifier {
  Future<int?> workWithIt(String stringOfNumbers) async {
    var numbers = splitNumbers(stringOfNumbers);

    List<int?> formatedNumbers = [];
    for (int i = 0; i < numbers.length; i++) {
      formatedNumbers.add(int.tryParse(numbers[i]));
    }

    return await hasAPairs(formatedNumbers)
        ? await giveMeThisWeirdOddNumber(formatedNumbers)
        : await giveMeThisWeirdEvenNumber(formatedNumbers);
  }

  List<String> splitNumbers(String text) {
    List<String> splittedText;
    try {
      splittedText = text.split(',');
    } catch (e) {
      rethrow;
    }
    return splittedText;
  }

  Future<bool> hasAPairs(List<int?> numbers) async {
    if (numbers.where((number) => number! % 2 == 0).length > 1 && numbers.where((number) => number! % 2 == 1).length > 1){
      throw Error();
    }
    if (numbers.where((number) => number! % 2 == 0).length > 1) {
      return true;
    } else {
      return false;
    }
  }

  Future<int?> giveMeThisWeirdOddNumber(List<int?> numbers) async {
    return numbers.firstWhere((number) => number! % 2 == 1);
  }

  Future<int?> giveMeThisWeirdEvenNumber(List<int?> numbers) async {
    return numbers.firstWhere((number) => number! % 2 == 0);
  }
}
