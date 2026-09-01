class Person{
    String fname;
    String lname;
    Person(this.fname, this.lname);
    String toString(){
        return fname+", "+lname;
    }
}
class Employee extends Person{
    int id;
    double hour;
    double rate;
    Employee(this.id, this.hour, this.rate):super(f,l);
    double getSalary(){
        return hour*rate;
    }
    String toString(){
        String report = id.toString()+",";
        report += super.toString()+",";
        report += hour.toString()+",";
        report += rate.toString()+",";
        report += getSalary().toString();
        return report;
    }
}
void main(){
    Employee e = Employee(1, "Sopheak", "TUN", 100, 50);
    print(e.toString());
    e.fname = "Sterling";
    e.lname = "Lingstone";
    
}