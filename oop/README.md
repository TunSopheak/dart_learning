**មេរៀនស្តីពី Object-Oriented Programming (OOP) នៅក្នុង Dart Programming**

---

### មេរៀនទី ១៖ Class និង Object

**Class** គឺជាគំរូ ឬប្លង់ (Blueprint) សម្រាប់បង្កើត Object។  
**Object** គឺជាទម្រង់ជាក់ស្តែងដែលត្រូវបានបង្កើតចេញពី Class នោះ។

```dart
// 1. ការបង្កើត Class
class Person {
  // Properties (លក្ខណៈសម្បត្តិ)
  String name = '';
  int age = 0;

  // Method (សកម្មភាព ឬមុខងារ)
  void displayInfo() {
    print('Name: $name, Age: $age');
  }
}

void main() {
  // 2. ការបង្កើត Object ពី Class Person
  Person person1 = Person();
  person1.name = 'Sokha';
  person1.age = 25;

  person1.displayInfo(); // លទ្ធផល: Name: Sokha, Age: 25
}
```

---

### មេរៀនទី ២៖ Constructors

**Constructor** គឺជា Method ពិសេសមួយដែលត្រូវបានហៅដោយស្វ័យប្រវត្តិ នៅពេលដែល Object ត្រូវបានបង្កើតឡើង។ វាច្រើនប្រើសម្រាប់កំណត់តម្លៃដំបូង (Initial Values) ឱ្យ Properties របស់ Class។

```dart
class Student {
  String name;
  int grade;

  // Constructor ធម្មតា
  Student(this.name, this.grade);

  void showStudent() {
    print('Student: $name, Grade: $grade');
  }
}

void main() {
  Student student = Student('Dara', 12);
  student.showStudent(); // លទ្ធផល: Student: Dara, Grade: 12
}
```

---

### មេរៀនទី ៣៖ Inheritance (បន្តវេន)

**Inheritance** អនុញ្ញាតឱ្យ Class កូន (Child Class) បន្តវេន Properties និង Methods មកពី Class មេ (Parent Class) ដើម្បីកាត់បន្ថយការសរសេរកូដជាន់គ្នា។

```dart
// Class មេ (Parent Class)
class Animal {
  String name = '';

  void eat() {
    print('$name is eating.');
  }
}

// Class កូន (Child Class) ប្រើ keyword 'extends'
class Dog extends Animal {
  void bark() {
    print('$name is barking.');
  }
}

void main() {
  Dog myDog = Dog();
  myDog.name = 'Lucky';
  myDog.eat();  // ទទួលបានពី Class Animal
  myDog.bark(); // មុខងាររបស់ Class Dog ផ្ទាល់
}
```

---

### មេរៀនទី ៤៖ Encapsulation (ការលាក់បាំងទិន្នន័យ)

**Encapsulation** ប្រើសម្រាប់ការពារទិន្នន័យក្នុង Class កុំឱ្យកូដខាងក្រៅមកកែប្រែខុសប្រក្រតីដោយផ្ទាល់។ យើងប្រើសញ្ញា underscore (`_`) នៅមុខឈ្មោះ Variable ដើម្បីធ្វើឱ្យវាជាប្រភេទ Private។

```dart
class BankAccount {
  // Private variable
  double _balance = 0.0;

  // Getter សម្រាប់អានតម្លៃ Balance
  double get balance => _balance;

  // Setter សម្រាប់ដាក់ប្រាក់ចូលដោយមានការត្រួតពិនិត្យលក្ខខណ្ឌ
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    }
  }
}

void main() {
  BankAccount account = BankAccount();
  account.deposit(500.0);

  print(account.balance); // ប្រើ Getter ដើម្បីអានតម្លៃ (លទ្ធផល: 500.0)
  // account._balance = 1000.0; // Error: មិនអាចចូលទៅកែប្រែដោយផ្ទាល់បានទេ
}
```

---

### មេរៀនទី ៥៖ Polymorphism (ពហុសណ្ឋាន)

**Polymorphism** អនុញ្ញាតឱ្យ Method នៅក្នុង Class កូនអាចសរសេរបន្ថែម ឬកែសម្រួលទម្រង់ដំណើរការឡើងវិញ (Override) ពី Class មេ។

```dart
class Shape {
  void draw() {
    print('Drawing a generic shape');
  }
}

class Circle extends Shape {
  @override
  void draw() {
    print('Drawing a circle');
  }
}

void main() {
  Shape myShape = Circle();
  myShape.draw(); // លទ្ធផល: Drawing a circle (ហៅ Method របស់ Class កូន)
}
```