import 'dart:io';

void main(){
  int n;

  stdout.write("Enter a number: ");
  n = int.parse(stdin.readLineSync()!);

  for(int i = 1; i <= n; i++) {
    for(int j = 1; j <= i; j++) {
      stdout.write(j.toString() + " ");
    }
    print(""); // Move to the next line after each row
  }
}