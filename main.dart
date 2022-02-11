import 'dart:io';

import 'calculate_functions.dart';

void main() {
  double? first;
  double? second;
  String? option;
  double? result;

  print("first number:");
  first = double.parse(stdin.readLineSync()!);

  print("\nAdd : + \nSubtract: - \nDivide: /\nMultiply: *\n");
  option = stdin.readLineSync();

  print("\n second number:");
  second = double.parse(stdin.readLineSync()!);
  CalculateFunctions? functions = CalculateFunctions(num1: first, num2: second);
  if (option == "+") {
    result = functions.add(first, second);
  } else if (option == "-") {
    result = functions.subtract(first, second);
  } else if (option == "/") {
    result = functions.divide(first, second);
  } else if (option == "*") {
    result = functions.multiply(first, second) ?? 0;
  } else {
    print("Error(Please enter: numbers or option!)");
  }
  print("result: $result");
}
