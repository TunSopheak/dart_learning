//19 TUN Sopheak Male E8 Year:4

import 'dart:io';

class Person{
  String firstName;
  String lastName;
  String gender;
  Person(this.firstName, this.lastName, this.gender);
  String toString(){
    return firstName+", "+lastName+", "+gender;
  }
}
class Student extends Person{
  int id;
  String group;
  int year;
  Student(this.id, String f, String l, String g, this.group, this.year):super(f, l, g);
  String toString(){
    String report = id.toString()+", ";
    report += super.toString()+", ";
    report += group.toString()+", ";
    report += "Year:"+year.toString();
    return report;
  }
}

void main(){
  Student s = Student(19, "Sopheak", "TUN", "Male", "E8", 4);
  print(s.toString());
  s.firstName = "Kanha";
  s.lastName = "Kev";
  s.gender = "Female";
  s.year = 3;
  print(s.toString());
}