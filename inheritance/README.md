# មេរៀនទី៖ Inheritance និង Association ក្នុង Dart & Flutter

## សេចក្ដីផ្ដើម
នៅក្នុង OOP (Object-Oriented Programming) ការរចនាកម្មវិធីទាមទារឱ្យមានការផ្សារភ្ជាប់ទំនាក់ទំនងរវាង Class មួយទៅ Class មួយទៀត។ ទំនាក់ទំនងគោលដែលគេប្រើប្រាស់ញឹកញាប់បំផុតមានពីរគឺ៖ 
1. **Inheritance** (ការស្នងលក្ខណៈសម្បត្តិ) 
2. **Association** (សមាគម / ការតភ្ជាប់គ្នាជាក្រុម ឬជាផ្នែក)

ការយល់ដឹងពីចំណុចទាំងពីរនេះ ជួយឱ្យអ្នកដឹងថាពេលណាគួរប្រើ `extends` និងពេលណាគួរគ្រាន់តែប្រកាស Object ធម្មតា។

---

## 1. ការប្រើប្រាស់ Inheritance (Keyword `extends`)
នៅក្នុងភាសា Dart យើងប្រើពាក្យគន្លឹះ `extends` ដើម្បីបង្កើត Child Class ឱ្យស្នងពី Parent Class។

**ឧទាហរណ៍ទី១៖ ការស្នងលក្ខណៈសម្បត្តិជាមូលដ្ឋាន**
```dart
class Animal {
  String name = "សត្វទូទៅ";

  void eat() {
    print("$name កំពុងស៊ីចំណី...");
  }
}

// Dog ស្នងពី Animal ដោយប្រើ extends
class Dog extends Animal {
  void bark() {
    print("$name កំពុងព្រុស: វូស! វូស!");
  }
}

void main() {
  Dog myDog = Dog();
  myDog.name = "អាស្មៅ";
  
  myDog.eat();  // Method នេះបានមកពី Animal (Parent)
  myDog.bark(); // Method នេះជារបស់ Dog ផ្ទាល់ខ្លួន
}

```

---

## 2. ការសរសេរកែប្រែ Method ចាស់ (Method Overriding)

ពេលខ្លះ Child Class ទទួលបាន Method ពី Parent Class ដែរ ប៉ុន្តែចង់ប្ដូររបៀបធ្វើការរបស់ Method នោះ។ យើងអាចធ្វើបានដោយប្រើពាក្យគន្លឹះ `@override`។

```dart
class Animal {
  void makeSound() {
    print("សត្វបន្លឺសំឡេង...");
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("ឆ្មាបន្លឺសំឡេង: ម៉ែវ! ម៉ែវ!");
  }
}

```

---

## 3. ការប្រើប្រាស់ Constructor ជាមួយ `super`

នៅពេលដែល Parent Class មាន Constructor ដែលតម្រូវឱ្យបោះតម្លៃ នោះ Child Class ក៏ត្រូវតែហៅ Constructor របស់ Parent មកវិញដែរ (ប្រើ `super`)។

```dart
class Person {
  String name;
  Person(this.name);
}

class Student extends Person {
  String schoolName;

  // Dart ថ្មី: បោះតម្លៃ name ទៅឱ្យ Parent តាមរយៈ super.name
  Student(super.name, this.schoolName);
}

```

---

## 4. ទំនាក់ទំនង Inheritance នៅក្នុង Flutter

រាល់ពេលដែលអ្នកបង្កើត UI (Widget) ក្នុង Flutter អ្នកតែងតែបង្កើត Class ថ្មីមួយដែលស្នងពី `StatelessWidget` ឬ `StatefulWidget`។

```dart
import 'package:flutter/material.dart';

// MyCustomButton គឺជា Child Class ចំណែក StatelessWidget គឺជា Parent
class MyCustomButton extends StatelessWidget {
  final String title;

  const MyCustomButton({super.key, required this.title});

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

## 5. ទំនាក់ទំនងរវាង Class៖ Inheritance vs Association (IS-A vs HAS-A)

ដើម្បីសម្រេចចិត្តថាតើគួរភ្ជាប់ Class ពីរចូលគ្នាតាមរបៀបណា គេតែងតែផ្អែកលើទស្សនាទាន **IS-A** និង **HAS-A**។

### ក. Inheritance (ទំនាក់ទំនងបែប IS-A)

* **អត្ថន័យ:** "A គឺជា B" ។ វាបង្ហាញពីទំនាក់ទំនងដែល Class មួយ ជាប្រភេទរង (Sub-type) របស់ Class មួយទៀត។
* **ការប្រើប្រាស់:** ប្រើប្រាស់ keyword `extends`។
* **ឧទាហរណ៍:** `Dog` គឺជា `Animal` (Dog IS-A Animal)។ `Student` គឺជា `Person`។

### ខ. Association (ទំនាក់ទំនងបែប HAS-A ឬ USES-A)

* **អត្ថន័យ:** "A មាន B" ឬ "A ធ្វើការជាមួយ B"។ វាជាការតភ្ជាប់រវាង Class ពីរដែលឯករាជ្យពីគ្នា។ ក្នុងទំនាក់ទំនងនេះ **យើងមិនប្រើ `extends` ទេ** តែយើងប្រកាស Class មួយជា Property នៅក្នុង Class មួយទៀត។
* **ប្រភេទនៃ Association:** ច្រើនតែត្រូវបានគេស្គាល់តាមរយៈ **Composition** (A មិនអាចរស់ខ្វះ B បាន) និង **Aggregation** (A និង B អាចរស់នៅឯករាជ្យរៀងខ្លួនបាន)។
* **ឧទាហរណ៍:** `Car` មាន `Engine` (Car HAS-A Engine)។ ឡានមិនមែនជាម៉ាស៊ីនទេ តែឡានមានម៉ាស៊ីន។ `Doctor` មាន `Patient` ។

**ឧទាហរណ៍កូដប្រៀបធៀប Inheritance (IS-A) និង Association (HAS-A)៖**

```dart
// ==========================================
// ១. Inheritance (ទំនាក់ទំនង IS-A)
// ==========================================
class Animal {
  void breathe() => print("ដកដង្ហើម...");
}

// Dog "គឺជា" Animal ដូច្នេះយើងប្រើ extends
class Dog extends Animal {} 


// ==========================================
// ២. Association (ទំនាក់ទំនង HAS-A / USES-A)
// ==========================================
class Engine {
  void startEngine() => print("ម៉ាស៊ីនកំពុងឆេះ...");
}

class Car {
  String model;
  // Association: Car "មាន" Engine ដូច្នេះយើងប្រកាសវាជា Property
  // យើងមិនអាចឱ្យ Car extends Engine បានទេ ព្រោះឡានមិនមែនជាម៉ាស៊ីន!
  Engine myEngine = Engine(); 

  Car(this.model);

  void drive() {
    myEngine.startEngine(); // ប្រើប្រាស់សមត្ថភាពរបស់ Engine
    print("$model កំពុងបរ...");
  }
}

// Association មួយទៀត (ទំនាក់ទំនងបែបឯករាជ្យ)
class Doctor {
  String name;
  Doctor(this.name);
  
  // Doctor "ព្យាបាល" Patient (USES-A)
  void treatPatient(Patient p) {
    print("វេជ្ជបណ្ឌិត $name កំពុងពិនិត្យអ្នកជំងឺ ${p.name}");
  }
}

class Patient {
  String name;
  Patient(this.name);
}

void main() {
  // ការហៅប្រើ Inheritance
  Dog myDog = Dog();
  myDog.breathe(); 
  
  // ការហៅប្រើ Association (HAS-A)
  Car myCar = Car("Toyota Prius");
  myCar.drive(); 
  
  // ការហៅប្រើ Association (USES-A)
  Doctor doc = Doctor("សុខ");
  Patient pat = Patient("សៅ");
  doc.treatPatient(pat);
}

```

---

## សេចក្ដីសន្និដ្ឋាន

* **Inheritance (`extends`)**: ប្រើនៅពេលដែល Class មួយមានលក្ខណៈជាតិជា Class មួយទៀត (IS-A)។ វាកើតមកដើម្បីស្នងកេរ្តិ៍។
* **Association (Property/Parameter)**: ប្រើនៅពេលដែល Class មួយគ្រាន់តែចង់ប្រើប្រាស់សមត្ថភាព ឬផ្ទុក Class មួយទៀត (HAS-A / USES-A)។
* **ច្បាប់មាសក្នុង OOP:** *"Favor Composition (Association) over Inheritance"* មានន័យថា ប្រសិនបើកូដអាចប្រើប្រាស់ Association បាន គេលើកទឹកចិត្តឱ្យប្រើជាង Inheritance ព្រោះវាធ្វើឱ្យកូដមានភាពបត់បែនខ្ពស់ជាង។
