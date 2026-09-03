មេរៀនស្តីពី **Function** នៅក្នុង **Dart Programming** 

---

# មេរៀនទី ១៖ ការបង្កើត និងហៅប្រើប្រាស់ Function មូលដ្ឋាន

Function គឺជាបណ្តុំនៃកូដដែលត្រូវបានសរសេរឡើងដើម្បីបំពេញការងារជាក់លាក់ណាមួយ ហើយយើងអាចហៅវា (Call) យកមកប្រើប្រាស់បានច្រើនដង។

```dart
// ១. បង្កើត Function ដែលមិនមាន return តម្លៃ និងមិនមាន Parameter
void sayHello() {
  print('Hello, Welcome to Dart!');
}

void main() {
  // ហៅប្រើប្រាស់ Function
  sayHello();
}

```

---

# មេរៀនទី ២៖ Function ជាមួយ Parameters

យើងអាចបញ្ជូនទិន្នន័យ (Arguments) ចូលទៅក្នុង Function តាមរយៈ Parameters ដើម្បីឲ្យវាធ្វើការគណនា ឬច្នៃប្រឌិតទិន្នន័យនោះ។

```dart
// Function ដែលទទួល Parameter ពីរប្រភេទ int
void calculateSum(int num1, int num2) {
  int sum = num1 + num2;
  print('Sum is: $sum');
}

void main() {
  calculateSum(10, 20); // លទ្ធផល: 30
}

```

---

# មេរៀនទី ៣៖ Function ជាមួយ Return Type

ប្រសិនបើចង់ឱ្យ Function ដំណើរការរួច ហើយបញ្ជូនលទ្ធផល (Result) ត្រឡប់មកវិញដើម្បីយកទៅប្រើបន្ត យើងត្រូវកំណត់ Data Type ជំនួសឱ្យពាក្យ `void` និងប្រើប្រាស់ keyword `return`។

```dart
// Function ប្រភេទ int ដែលត្រឡប់តម្លៃផលគុណ
int multiply(int a, int b) {
  return a * b;
}

void main() {
  int result = multiply(5, 4);
  print(result); // លទ្ធផល: 20
}

```

---

# មេរៀនទី ៤៖ Arrow Syntax ( => )

សម្រាប់ Function ដែលមានកូដខ្លីត្រឹមតែមួយបន្ទាត់ (Single-expression) យើងអាចប្រើប្រាស់ Arrow Syntax ដើម្បីសរសេរកូដឱ្យកាន់តែខ្លី និងងាយស្រួលអាន។

```dart
// ការប្រើប្រាស់ Arrow Syntax
int subtract(int a, int b) => a - b;

void main() {
  print(subtract(10, 3)); // លទ្ធផល: 7
}

```

---

# មេរៀនទី ៥៖ Named Parameters និង Optional Parameters

នៅក្នុង Dart យើងអាចកំណត់ Parameter ឱ្យទៅជាជម្រើស (Optional) ឬប្រើប្រាស់ឈ្មោះ (Named) ដើម្បីកុំឱ្យច្រឡំលំដាប់ពេលហៅប្រើប្រាស់។

## ១. Named Parameters (ប្រើសញ្ញា `{}`)

ពេលហៅប្រើប្រាស់ យើងត្រូវបញ្ជាក់ឈ្មោះ Parameter ផ្ទាល់តែម្តង។

```dart
void printUserProfile({required String name, int age = 18}) {
  print('Name: $name, Age: $age');
}

void main() {
  printUserProfile(name: 'Sokha', age: 25);
  printUserProfile(name: 'Dara'); // ប្រើតម្លៃ default age = 18
}

```

## ២. Optional Positional Parameters (ប្រើសញ្ញា `[]`)

ដាក់ Parameter នៅក្នុងរង្វង់ជ្រុង ដើម្បីឱ្យវាជាជម្រើសដោយមិនបាច់ដាក់ឈ្មោះពេលហៅ។

```dart
void displayInfo(String title, [String? subtitle]) {
  print('Title: $title');
  if (subtitle != null) {
    print('Subtitle: $subtitle');
  }
}

void main() {
  displayInfo('Dart Tutorial'); 
  displayInfo('Dart Tutorial', 'Advanced Level');
}

```