import 'dart:io';

void main() {
  const Map<int, String> digits = {
    0: 'zero',
    1: 'one',
    2: 'two',
    3: 'three',
    4: 'four',
    5: 'five',
    6: 'six',
    7: 'seven',
    8: 'eight',
    9: 'nine',
  };

  stdout.write("Enter a number: ");
  int n = int.parse(stdin.readLineSync()!);

  String result = '';
  String numStr = n.toString();

  for (int i = 0; i < numStr.length; i++) {
    int digit = int.parse(numStr[i]);
    result += digits[digit]!;
  }

  print(result);
}