# មេរៀនទី៖ Inheritance (ការស្នងលក្ខណៈសម្បត្តិ) ក្នុង Dart & Flutter

## សេចក្ដីផ្ដើម
**Inheritance** គឺជាគោលការណ៍ដ៏សំខាន់មួយរបស់ OOP (Object-Oriented Programming) ដែលអនុញ្ញាតឱ្យ Class ថ្មីមួយ អាចស្នង (ទទួលយក) លក្ខណៈសម្បត្តិ (Properties) និងសមត្ថភាព (Methods) ពី Class ចាស់ដែលមានស្រាប់។

* **Parent Class (Super Class / Base Class):** ជា Class ដើមដែលផ្ដល់លក្ខណៈសម្បត្តិឱ្យគេ។
* **Child Class (Sub Class / Derived Class):** ជា Class ថ្មីដែលទទួលយកលក្ខណៈសម្បត្តិពី Parent Class។

**អត្ថប្រយោជន៍ចម្បង៖** កាត់បន្ថយការសរសេរកូដជាន់គ្នា (Code Reusability), ចំណេញពេលវេលា និងងាយស្រួលគ្រប់គ្រងកូដ។

---

## 1. របៀបប្រើប្រាស់ Inheritance (Keyword `extends`)
នៅក្នុងភាសា Dart យើងប្រើពាក្យគន្លឹះ `extends` ដើម្បីបង្កើត Child Class ឱ្យស្នងពី Parent Class។

**ឧទាហរណ៍ទី១៖ ការស្នងលក្ខណៈសម្បត្តិជាមូលដ្ឋាន**
```dart
// 1. បង្កើត Parent Class
class Animal {
  String name = "សត្វទូទៅ";

  void eat() {
    print("$name កំពុងស៊ីចំណី...");
  }
}

// 2. បង្កើត Child Class ដោយប្រើ extends
class Dog extends Animal {
  void bark() {
    print("$name កំពុងព្រុស: វូស! វូស!");
  }
}

void main() {
  Dog myDog = Dog();
  myDog.name = "កូនឆ្កែ អាស្មៅ";
  
  myDog.eat();  // Method នេះបានមកពី Animal (Parent)
  myDog.bark(); // Method នេះជារបស់ Dog ផ្ទាល់ខ្លួន
}

```

---

## 2. ការសរសេរកែប្រែ Method ចាស់ (Method Overriding)

ពេលខ្លះ Child Class ទទួលបាន Method ពី Parent Class ដែរ ប៉ុន្តែចង់ប្ដូររបៀបធ្វើការរបស់ Method នោះឱ្យសមស្របនឹងខ្លួនឯង។ យើងអាចធ្វើបានដោយប្រើពាក្យគន្លឹះ `@override`។

**ឧទាហរណ៍ទី២៖ Method Overriding**

```dart
class Animal {
  void makeSound() {
    print("សត្វបន្លឺសំឡេង...");
  }
}

class Cat extends Animal {
  // កែប្រែ Method makeSound របស់ Animal មកជារបស់ខ្លួនឯង
  @override
  void makeSound() {
    print("ឆ្មាបន្លឺសំឡេង: ម៉ែវ! ម៉ែវ!");
  }
}

void main() {
  Animal genericAnimal = Animal();
  genericAnimal.makeSound(); // Output: សត្វបន្លឺសំឡេង...

  Cat myCat = Cat();
  myCat.makeSound(); // Output: ឆ្មាបន្លឺសំឡេង: ម៉ែវ! ម៉ែវ!
}

```

---

## 3. ការប្រើប្រាស់ Constructor ជាមួយ `super`

នៅពេលដែល Parent Class មាន Constructor ដែលតម្រូវឱ្យបោះតម្លៃ (Parameters) នោះ Child Class ក៏ត្រូវតែហៅ Constructor របស់ Parent មកវិញដែរ តាមរយៈការប្រើប្រាស់ `super`។

> **ចំណាំ:** នៅក្នុង Dart version ថ្មីៗ (ចាប់ពី 2.17 ឡើងទៅ) យើងមាន Syntax ថ្មីងាយស្រួលសរសេរជាងមុនដោយប្រើ `super.propertyName`។

**ឧទាហរណ៍ទី៣៖ ការបញ្ជូនទិន្នន័យទៅ Parent Constructor**

```dart
class Person {
  String name;
  int age;

  // Constructor របស់ Parent Class
  Person(this.name, this.age);

  void showInfo() {
    print("ឈ្មោះ: $name, អាយុ: $age ឆ្នាំ");
  }
}

class Student extends Person {
  String schoolName;

  // របៀបទី១ (ចាស់): Student(String name, int age, this.schoolName) : super(name, age);
  // របៀបទី២ (Dart ថ្មី ពេញនិយម):
  Student(super.name, super.age, this.schoolName);

  void showStudentInfo() {
    super.showInfo(); // ហៅ Method របស់ Parent មកប្រើ
    print("រៀននៅសាលា: $schoolName");
  }
}

void main() {
  Student stu1 = Student("សុខា", 20, "RUPP");
  stu1.showStudentInfo();
}

```

---

## 4. ទំនាក់ទំនង Inheritance នៅក្នុង Flutter

ប្រសិនបើអ្នកសរសេរ Flutter អ្នកនឹងប្រើ Inheritance ជារៀងរាល់ថ្ងៃ! រាល់ពេលដែលអ្នកបង្កើត UI (Widget) អ្នកតែងតែបង្កើត Class ថ្មីមួយដែលស្នងពី `StatelessWidget` ឬ `StatefulWidget`។

**ឧទាហរណ៍ជាក់ស្ដែងក្នុង Flutter៖**

```dart
import 'package:flutter/material.dart';

// MyCustomButton គឺជា Child Class
// StatelessWidget គឺជា Parent Class របស់ Flutter
class MyCustomButton extends StatelessWidget {
  final String title;

  // បោះ Key ទៅឱ្យ Parent តាមរយៈ super.key
  const MyCustomButton({super.key, required this.title});

  // យើង Override method build របស់ StatelessWidget ដើម្បីគូស UI ថ្មី
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(title),
    );
  }
}

```

---

## 5. ទស្សនាទាន "IS-A" និង "HAS-A" (IS-A vs HAS-A Relationship)

នៅក្នុង OOP ដើម្បីសម្រេចចិត្តថា តើពេលណាគួរប្រើ Inheritance (`extends`) ហើយពេលណាគួរគ្រាន់តែប្រកាសជា Object ធម្មតា គេតែងតែផ្អែកលើទស្សនាទាន **IS-A** និង **HAS-A**។

### ក. ទំនាក់ទំនង IS-A (Inheritance)

* **អត្ថន័យ:** "A គឺជា B" ។ វាប្រាប់ពីទំនាក់ទំនងបែប Inherit ដែល Class មួយជារបស់ Class មួយទៀត។
* **ការប្រើប្រាស់:** ប្រើប្រាស់ keyword `extends`។
* **ឧទាហរណ៍:** `Dog` គឺជា `Animal` (Dog IS-A Animal)។ `Student` គឺជា `Person` (Student IS-A Person)។ `MyCustomButton` គឺជា `StatelessWidget`។

### ខ. ទំនាក់ទំនង HAS-A (Composition / Aggregation)

* **អត្ថន័យ:** "A មាន B" ។ វាប្រាប់ពីទំនាក់ទំនងដែល Class មួយ មាន Class មួយទៀតជាផ្នែក (Component) របស់វា។ យើងមិនប្រើ `extends` ទេ តែយើងប្រកាសវាជា Property (Field) ជំនួសវិញ។
* **ការប្រើប្រាស់:** បង្កើត Object របស់ Class មួយដាក់ចូលក្នុង Class មួយទៀត។
* **ឧទាហរណ៍:** `Car` មាន `Engine` (Car HAS-A Engine)។ ឡានមិនមែនជាម៉ាស៊ីនទេ តែឡានមានម៉ាស៊ីន។ `Person` មាន `Address`។

**ឧទាហរណ៍កូដប្រៀបធៀប IS-A និង HAS-A៖**

```dart
// ==================== ទំនាក់ទំនង IS-A ====================
class Animal {
  void breathe() => print("ដកដង្ហើម...");
}

// Dog "គឺជា" Animal ដូច្នេះប្រើ extends
class Dog extends Animal {} 


// ==================== ទំនាក់ទំនង HAS-A ====================
class Engine {
  void startEngine() => print("ម៉ាស៊ីនកំពុងឆេះ...");
}

class Car {
  // Car "មាន" Engine ដូច្នេះយើងមិនប្រើ extends ទេ 
  // តែយើងប្រកាស Engine ជា Property នៅក្នុង Car (Composition)
  Engine myEngine = Engine(); 

  void drive() {
    myEngine.startEngine(); // ប្រើប្រាស់សមត្ថភាពរបស់ Engine
    print("ឡានកំពុងបរ...");
  }
}

void main() {
  // IS-A Usage
  Dog myDog = Dog();
  myDog.breathe(); 
  
  // HAS-A Usage
  Car myCar = Car();
  myCar.drive(); 
}

```

---

## សេចក្ដីសន្និដ្ឋាន

* ប្រើ **`extends`** ដើម្បីឱ្យ Class មួយស្នងលក្ខណៈពី Class មួយទៀត (ទំនាក់ទំនងបែប **IS-A** )។
* ប្រើ **Object ជា Property** នៅពេលដែល Class មួយគ្រាន់តែផ្ទុក ឬមាន Class មួយទៀត (ទំនាក់ទំនងបែប **HAS-A** )។
* ប្រើ **`@override`** ដើម្បីកែប្រែ Method របស់ Parent។
* ប្រើ **`super`** ដើម្បីហៅ Method ឬ Constructor របស់ Parent មកប្រើការ។
* ក្នុង Dart, Class មួយអាច `extends` ពី Parent Class បាន**តែមួយគត់** (Single Inheritance)។
