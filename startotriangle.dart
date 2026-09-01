import 'dart:io';

int readInt(String l){
  stdout.write(l);
  return int.parse(stdin.readLineSync()!);
}

void displayRectangle(int n){
  for(int i = 1; i <= n; i++){
    stdout.write(i.toString() + ":");
    for(int j = 1; j <= i; j++){
      stdout.write("* ");
    }
    print(""); // Move to the next line after each row
  }
}

void main(){
  int n;
  n = readInt("Enter the number of rows: ");
  displayRectangle(n);
}