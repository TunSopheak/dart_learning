import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= n; i++) {
    // print leading spaces for centering
    for (int s = 1; s <= n - i; s++) {
      stdout.write('  '); // two spaces
    }

    // increasing part
    for (int j = 1; j <= i; j++) {
      stdout.write('$j ');
    }

    // decreasing part
    for (int j = i - 1; j >= 1; j--) {
      stdout.write('$j ');
    }

    print('');
  }
}