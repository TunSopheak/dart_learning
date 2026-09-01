import 'dart:io';
import 'dart:math';

void main(){
  int n;

  print("====================================");
  print("Welcome to the Guess Number Game!🎮");
  print("====================================");

  while(true){
    stdout.write("Choose type [one, two, three] or q for quit: ");
    String type = stdin.readLineSync()!;

    if (type == "q") {
      print("Exiting the game. Goodbye!🥰");
      return;
    }

    switch(type){
      case "one":
        stdout.write("One your number {1,9}: ");
        n = int.parse(stdin.readLineSync()!);
        if (n < 1 || n > 9) {
          print("Invalid number. Please choose a number between 1 and 9.");
          continue;
        }
        print("Your number is: $n");
        Random rand = Random();
        int randomNum = rand.nextInt(9) + 1; // Generates a number
        if (n == randomNum) {
          print("$type $n : $randomNum win!🎉");
        } else {
          print("$type $n : $randomNum lose!😣");
        }
        break;
      case "two":
        stdout.write("Two your number {10,99}: ");
        n = int.parse(stdin.readLineSync()!);
        if (n < 10 || n > 99) {
          print("Invalid number. Please choose a number between 10 and 99.");
          continue;
        }
        print("Your number is: $n");
        Random rand2 = Random();
        int randomNum2 = rand2.nextInt(90) + 10; // Generates a number
        if (n == randomNum2) {
          print("$type $n : $randomNum2 win!🎉");
        } else {
          print("$type $n : $randomNum2 lose!😣");
        }
        break;
      case "three":
        stdout.write("Three your number {100,999}: ");
        n = int.parse(stdin.readLineSync()!);
        if (n < 100 || n > 999) {
          print("Invalid number. Please choose a number between 100 and 999.");
          continue;
        }
        print("Your number is: $n");
        Random rand3 = Random();
        int randomNum3 = rand3.nextInt(900) + 100; // Generates a number
        if (n == randomNum3) {
          print("$type $n : $randomNum3 win!🎉");
        } else {
          print("$type $n : $randomNum3 lose!😣");
        }
        break;
      default:
        print("Invalid type. Please choose 'one', 'two', 'three', or 'q' to quit.");
        continue;
    }
  }
}