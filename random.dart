import 'dart:io';
import 'dart:math';

//create a random game using functions, switch case, and loops
//create KeyString function to get user input from a list of strings
Random rd = Random();
String keyString(List<String>l){
  String k="";
  do{
    stdout.write("Choose in ${l}: ");
    k=stdin.readLineSync()!;
  }while(l.indexOf(k)==-1);
  return k;
}

//create a function to get user input between min and max
int keyInt(int min,int max){
  int k=0;
  do{
    stdout.write("Enter [${min},${max}]: ");
    k=int.parse(stdin.readLineSync()!);
  }while(k<min||k>max);
  return k;
}

//create a function to get random number
int getRandom(int min,int max){
  return min+rd.nextInt(max-min+1);
}

//create a function to check if the user number is equal to the random number
bool play(int y,int m){
  return y==m;
}

//create a function to play the game
void toPlay(){
  List<String>l=["one","two","three"];
  String type="",result="";
  int y=0,m=0;
  type=keyString(l);
  switch(type){
    case "one":
      y=keyInt(0, 9);
      m=getRandom(0,9);
      break;
    case "two":
      y=keyInt(10, 99);
      m=getRandom(10,99);
      break;
    case "three":
      y=keyInt(100, 999);
      m=getRandom(100,999);
      break;
  }
  result=type+":";
  result+=y.toString()+":";
  result+=m.toString()+":";
  if(play(y,m)){
    result+="win!🎉";
  }else{
    result+="lose!😣";
  }
  print(result);
}
void main(){
  print("====================================");
  print("Welcome to the Guess Number Game!🎮");
  print("====================================");
  List<String>l=["yes","no"];
  while(true){
    toPlay();
    print("Do you want to play again?");
    String k=keyString(l);
    if(k=="no"){
      print("Exiting the game. Goodbye!🥰");
      break;
    }
  }
}