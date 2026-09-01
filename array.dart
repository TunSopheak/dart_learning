/*
- Create array integer (input from keyboard)
- output all elements
- sort ascending
- sort descending
- show prime numbers
*/

import 'dart:io';
import 'dart:math';

String readString(String l){
  stdout.write(l);
  return stdin.readLineSync()!;
}

int readInt(String l){
  stdout.write(l);
  return int.parse(stdin.readLineSync()!);
}

List<int> getList(){
  List<int> l = [];
  do{
    l.add(readInt("Enter Data:"));
  }while(readString("more(y/n)? ") == "y");
  return l;
}

void display(List<int> l){
  print(l);
}

void main(){
  List<int>data;
  data = getList();
  display(data);
  sortAscending(data);
  sortDescending(data);
  showPrime(data);
}

// sort ascending
void sortAscending(List<int> l){
  l.sort();
  print(l);
}

// sort descending
void sortDescending(List<int>l){
  l.sort((a,b) => b.compareTo(a));
  print(l);
}

// check prime number
bool isPrime(int n){
  bool help = true;
  for(int i = 2; i <= n-1; i++){
    if(n % i == 0){
      help = false;
      break;
    }
  }
  return help;
}

// show prime numbers
void showPrime(List<int> l){
  List<int> primeNumbers = [];
  for(int k in l){
    if(isPrime(k)) primeNumbers.add(k);
  }
  print(primeNumbers);
}