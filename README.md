មេរៀនមូលដ្ឋានគ្រឹះនៃភាសា **Dart Programming**

---

# មេរៀនទី ១៖ ការចាប់ផ្តើម និងប្រតិបត្តិការគណិតវិទ្យា (Operators)

Dart គឺជាភាសាកម្មវិធី (Programming Language) ដែលប្រើប្រាស់យ៉ាងទូលំទូលាយ ជាពិសេសជាមួយ Flutter Framework សម្រាប់ការអភិវឌ្ឍ App។

## ១. ការប្រើប្រាស់ `print()`

អនុគមន៍ `print()` ប្រើសម្រាប់បង្ហាញលទ្ធផល ឬ Text ទៅកាន់ Console។

```dart
void main() {
  print('Hello Dart');
}

```

## ២. ប្រតិបត្តិការគណិតវិទ្យា (Mathematical Operators)

នៅក្នុង Dart យើងអាចធ្វើការគណនាដូចជា បូក, ដក, គុណ, និង ចែក បានយ៉ាងងាយស្រួល។

```dart
void main() {
  print(2 + 2); // បូក: 4
  print(4 - 2); // ដក: 2
  print(2 * 3); // គុណ: 6
  print(4 / 2); // ចែក (ផ្តល់លទ្ធផលជា double): 2.0
}

```

### លំដាប់នៃប្រមាណវិធី (Operator Precedence)

ដូចទៅនឹងគណិតវិទ្យាដែរ ប្រមាណវិធី គុណ (`*`) និង ចែក (`/`) មានអាទិភាពធ្វើមុន បូក (`+`) និង ដក (`-`)។ ប្រសិនបើចង់ផ្លាស់ប្តូរអាទិភាព ត្រូវប្រើរង្វង់ក្រចក `()`។

```dart
void main() {
  print(4 + 4 / 2);   // លទ្ធផល: 6.0 (ធ្វើ 4/2 រួចបូក 4)
  print((4 + 4) / 2); // លទ្ធផល: 4.0 (ធ្វើ 4+4 រួចចែក 2)
}

```

### Integer Division (`~/`) និង Modulo (`%`)

* **`~/`** (Integer Division): ចែកយកតែផ្នែកគត់ ដោយលុបចោលចំនួនទសភាគ។
* **`%`** (Modulo): ចែកយកសំណល់ (Remainder)។

```dart
void main() {
  print(8 / 3);  // 2.6666666666666665
  print(8 ~/ 3); // 2 (យកតែផ្នែកគត់)
  print(8 % 3);  // 2 (សំណល់នៃការចែក)
}

```

---

# មេរៀនទី ២៖ អថេរ និង ប្រភេទទិន្នន័យ (Variables & Data Types)

Variable គឺជាកន្លែងសម្រាប់រក្សាទុកទិន្នន័យនៅក្នុង Program។ នៅក្នុង Dart យើងប្រើសមភាព `=` សម្រាប់ការប្រគល់តម្លៃ (Assignment)។

## ១. ប្រភេទទិន្នន័យគ្រឹះ (Basic Data Types)

* **`int`**: ចំនួនគត់ (Whole numbers)
* **`double`**: ចំនួនទសភាគ (Decimal numbers)
* **`num`**: អាចផ្ទុកបានទាំង `int` និង `double`
* **`String`**: អក្សរ ឬ អត្ថបទ (Text)
* **`bool`**: តម្លៃពិត/មិនពិត (`true` ឬ `false`)

```dart
void main() {
  int age = 25;
  double price = 19.99;
  num score = 100; // score អាចជា double 100.5 ផងដែរ
  String name = 'Mahdi';
  bool isLogged = true;

  print(age);
  print(price);
  print(name);
  print(isLogged);
}

```

## ២. ភាព Type-Safe នៅក្នុង Dart

Dart គឺជាភាសាប្រភេទ **Type-Safe** ដែលមិនអនុញ្ញាតឱ្យប្រគល់តម្លៃខុស Data Type ទៅឱ្យ Variable ឡើយ។

```dart
void main() {
  int count = 10;
  // count = 10.5; // Error: តម្លៃ double មិនអាច assign ទៅ variable ប្រភេទ int បានទេ
}

```

## ៣. ការប្រើប្រាស់ Keyword `var`

`var` ត្រូវបានប្រើប្រាស់នៅពេលដែលយើងមិនចង់កំណត់ Data Type ជាក់លាក់ដោយផ្ទាល់។ Dart នឹងធ្វើការ Infer (កំណត់ Data Type ស្វ័យប្រវត្តិ) ផ្អែកលើតម្លៃដែលបាន Assign លើកដំបូង។

```dart
void main() {
  var cityName = 'Phnom Penh'; // Dart នឹងកំណត់ type ជា String ដោយស្វ័យប្រវត្តិ
  // cityName = 123; // Error: មិនអាចប្តូរពី String ទៅ int បានទេ
}

```

---

# មេរៀនទី ៣៖ អថេរថេរ (Constants)

Constant ត្រូវបានប្រើនៅពេលដែលតម្លៃរបស់ Variable មិនត្រូវអនុញ្ញាតឱ្យផ្លាស់ប្តូរទេ បន្ទាប់ពីបាន Assign តម្លៃរួច។ នៅក្នុង Dart មាន ២ ប្រភេទ៖

1. **`final`**: កំណត់តម្លៃនៅ Runtime (អាចទាញតម្លៃនៅពេល App កំពុង run)។
2. **`const`**: កំណត់តម្លៃនៅ Compile-time (តម្លៃត្រូវតែដឹងជាមុនច្បាស់លាស់)។

```dart
void main() {
  final String currentDate = '2026-09-03';
  const double pi = 3.14159;

  // currentDate = '2026-09-04'; // Error: មិនអាចប្តូរតម្លៃ final variable បានទេ
  // pi = 3.14;                 // Error: មិនអាចប្តូរតម្លៃ const variable បានទេ
}

```

---

# មេរៀនទី ៤៖ ឧទាហរណ៍ជាក់ស្តែង (Practical Example: Simple Calculator)

កម្មវិធីគណនាលេខសាមញ្ញដែលបូកសរុបការប្រើប្រាស់ Variables និង Operators ទាំងអស់ដែលបានរៀន៖

```dart
void main() {
  double number1 = 15.0;
  double number2 = 4.0;

  double sum = number1 + number2;
  double difference = number1 - number2;
  double product = number1 * number2;
  double quotient = number1 / number2;
  int intQuotient = number1 ~/ number2;
  double remainder = number1 % number2;

  print('Addition: $sum');             // Result: 19.0
  print('Subtraction: $difference');   // Result: 11.0
  print('Multiplication: $product');   // Result: 60.0
  print('Division: $quotient');        // Result: 3.75
  print('Integer Division: $intQuotient'); // Result: 3
  print('Modulo: $remainder');         // Result: 3.0
}

```

---

# មេរៀនទី ៥៖ គំនិតជឿនលឿន និង Back-end ជាមួយ Dart Frog

Dart មិនត្រឹមតែប្រើសម្រាប់ Mobile (Flutter) ប៉ុណ្ណោះទេ ថែមទាំងអាចយកមកសរសេរ Server-side (Back-end) បានទៀតផង ដោយប្រើប្រាស់ Framework ដូចជា **Dart Frog**។

## ១. ការបង្កើត Custom Exception

យើងអាចបង្កើត Error/Exception ដោយខ្លួនឯងបានតាមរយៈការ Implement `Exception` Interface៖

```dart
class NotFoundException implements Exception {
  final String message;
  NotFoundException(this.message);

  @override
  String toString() => 'NotFoundException: $message';
}

void main() {
  try {
    throw NotFoundException('User not found in database');
  } catch (e) {
    print(e);
  }
}

```

## ២. ការប្រើប្រាស់ WebSocket និង Stream

សម្រាប់ការធ្វើ Real-time Communication (ដូចជា Chat App) Dart ប្រើប្រាស់ **Stream** ដើម្បី Handle ទទួល និងផ្ញើ Data ជាបន្តបន្ទាប់។

```dart
import 'dart:async';

void main() {
  // បង្កើត StreamController សម្រាប់គ្រប់គ្រង Real-time Data Flow
  StreamController<String> chatStream = StreamController<String>();

  // Listening ទៅកាន់ Data ដែលចូលមក
  chatStream.stream.listen((message) {
    print('New message received: $message');
  });

  // ផ្ញើ Data ចូលទៅក្នុង Stream
  chatStream.add('Hello!');
  chatStream.add('How are you?');

  chatStream.close();
}

```