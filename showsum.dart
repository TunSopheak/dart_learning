import 'dart:io';

void main(){
    int n, t = 0;
    String result = "";

    stdout.write("Enter a number: "); 
    n = int.parse(stdin.readLineSync()!);

    for(int i = 1; i<=n; i++){
        result += (i<n) ? i.toString() + " + " : i.toString();
        t += i;
    }
    print(result + " = " + t.toString());
}