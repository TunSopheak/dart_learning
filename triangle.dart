import 'dart:io';
import 'dart:math';
String readString(String l){
  print(l);
  return stdin.readLineSync()!;
}
double readDouble(String l){
  return double.parse(readString(l));
}
class Triangle{
  double _a=0;
  double _b=0;
  double _c=0;
  Triangle([double a=3,double b=4,double c=5]){
   A=a;
   B=b;
   C=c;
  }
  set A(double a){this._a=a<0?0:a;}
  double get A{return this._a;}
  set B(double a){this._b=a<0?0:a;}
  double get B{return this._b;}
  set C(double a){this._c=a<0?0:a;}
  double get C{return this._c;}
  bool isTriangle(){
    bool help=false;
    if((A+B)>C && (A+C)>B && (C+B)>A) help=true;
    return help;
  }
  double getPerimeter(){
    double p=0;
    if(isTriangle()) p=A+B+C;
    return p;
  }
  double getArea(){
    double s=0,p=0;
    if(isTriangle()){
      p=getPerimeter()/2;
      s=sqrt(p*(p-A)*(p-B)*(p-C));
    }
    return s;
  }
  String toString(){
    String report="Side A:"+A.toString()+",";
    report+="Side B:"+B.toString()+",";
    report+="Side C:"+C.toString()+",";
    report+=isTriangle()? " Triangle ": " Not Triangle ";
    report+="Perimeter:"+getPerimeter().toString()+",";
    report+="Area:"+getArea().toString()+",";
    return report;
  }
}
void main(){
  Triangle t1=Triangle();
  print(t1.toString());
  Triangle t2=Triangle(10,15,20);
  print(t2.toString());
  double a,b,c;
  a=readDouble("Enter Side A");
  b=readDouble("Enter Side B");
  c=readDouble("Enter Side C");
  Triangle t3=Triangle(a,b,c);
  print(t3.toString());
}