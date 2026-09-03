មេរៀនស្តីពី **Error Handling (Try-Catch)** នៅក្នុង **Dart Programming** សម្រាប់យកទៅប្រើប្រាស់ក្នុងកូដ៖

---

# មេរៀនទី ១៖ ស្គាល់ពី Exceptions គឺអ្វី?

ពេលខ្លះ កូដរបស់យើងអាចនឹងជួបប្រទះបញ្ហានៅពេលកំពុងដំណើរការ (Runtime Error) ឧទាហរណ៍ដូចជា ការបែងចែកលេខនឹងសូន្យ ការអានឯកសារដែលគ្មានទម្រង់ ឬការទាញយកទិន្នន័យពី Server ដែលដាច់អ៊ីនធឺណិត។ ប្រសិនបើគ្មានការគ្រប់គ្រងទេ កម្មវិធីនឹងត្រូវគាំង (Crash) ជាយថាហេតុ។ ដូច្នេះហើយ ទើបយើងត្រូវប្រើប្រាស់ **Try-Catch** ដើម្បីទប់ស្កាត់ និងដោះស្រាយបញ្ហាទាំងនោះ។

---

# មេរៀនទី ២៖ ការប្រើប្រាស់ try, catch, និង finally

* **`try`**: កន្លែងដែលយើងសរសេរកូដដែលមានហានិភ័យអាចកើតមាន Error។
* **`catch`**: កន្លែងសម្រាប់ចាប់យក (Catch) Error ដែលកើតឡើងក្នុង block `try` មកកែច្នៃ ឬបង្ហាញសារប្រាប់អ្នកប្រើប្រាស់។
* **`finally`**: កន្លែងដែលកូដត្រូវតែរត់ជានិច្ច មិនថាមាន Error កើតឡើង ឬអត់នោះទេ។

```dart
void main() {
  int a = 10;
  int b = 0;

  try {
    // ព្យាយាមធ្វើការចែកលេខ (ការចែកនឹង 0 នឹងបង្កជា Exception)
    int result = a ~/ b;
    print('Result: $result');
  } catch (e) {
    // ចាប់យក Error និងបង្ហាញសារជូនដំណឹង
    print('Error occurred: $e');
  } finally {
    // កូដនៅក្នុងនេះនឹងដំណើរការជានិច្ច
    print('Execution completed.');
  }
}

```

---

# មេរៀនទី ៣៖ ការប្រើប្រាស់ on សម្រាប់ចាប់ Exception ជាក់លាក់

ប្រសិនបើយើងដឹងច្បាស់ថាប្រភេទ Error អ្វីដែលអាចកើតមានឡើង យើងអាចប្រើពាក្យគន្លឹះ **`on`** ដើម្បីកំណត់ប្រភេទ Exception ជាក់លាក់ណាមួយបានយ៉ាងជាក់លាក់។

```dart
void main() {
  String text = 'abc';

  try {
    // ព្យាយាមបម្លែង String ទៅជា int ដែលនឹងខុសទម្រង់ FormatException
    int number = int.parse(text);
    print(number);
  } on FormatException {
    print('Catch specific error: Invalid number format!');
  } catch (e) {
    print('Catch general error: $e');
  }
}

```

---

# មេរៀនទី ៤៖ ការបោះ Error ដោយខ្លួនឯង (Throwing Exceptions)

យើងអាចប្រើប្រាស់ keyword **`throw`** ដើម្បីបង្កើត និងបញ្ចេញ Error ដោយខ្លួនឯង ពេលដែលលក្ខខណ្ឌណាមួយមិនត្រូវតាមតម្រូវការរបស់កម្មវិធី។

```dart
void checkAge(int age) {
  if (age < 18) {
    // បោះ Exception ផ្ទាល់ខ្លួន
    throw Exception('Age must be at least 18 years old.');
  }
  print('Access granted.');
}

void main() {
  try {
    checkAge(15);
  } catch (e) {
    print('Caught an exception: $e');
  }
}

```