មេរៀនស្តីពី **Control Flow** (ការគ្រប់គ្រងលំហូរកម្មវិធី) នៅក្នុង **Dart Programming** សម្រាប់យកទៅប្រើប្រាស់ក្នុងកូដ៖

---

# មេរៀនទី ១៖ ការសម្រេចចិត្ត (Conditional Statements - if, else if, else)

សំណង់ `if-else` ប្រើសម្រាប់ឲ្យកម្មវិធីធ្វើការសម្រេចចិត្តផ្អែកលើលក្ខខណ្ឌណាមួយ (`true` ឬ `false`)។

```dart
void main() {
  int score = 85;

  if (score >= 90) {
    print('Grade: A');
  } else if (score >= 75) {
    print('Grade: B');
  } else if (score >= 60) {
    print('Grade: C');
  } else {
    print('Grade: F');
  }
}

```

---

# មេរៀនទី ២៖ ការជ្រើសរើសច្រើនជម្រើស (Switch-Case Statement)

`switch` ប្រើជំនួសការប្រើប្រាស់ `if-else` ច្រើនជាន់ នៅពេលដែលយើងត្រូវពិនិត្យតម្លៃតែមួយធៀបនឹងករណីជាច្រើន។

```dart
void main() {
  String role = 'admin';

  switch (role) {
    case 'admin':
      print('Full access to dashboard');
      break;
    case 'moderator':
      print('Can edit or delete posts');
      break;
    case 'user':
      print('Can view posts and comment');
      break;
    default:
      print('Unknown role');
  }
}

```

---

# មេរៀនទី ៣៖ រង្វិលជុំ (Loops)

Loops ប្រើសម្រាប់ដំណើរការកូដដដែលៗច្រើនដងដោយមិនចាំបាច់សរសេរកូដនោះម្តងហើយម្តងទៀតទេ។

## ១. For Loop

ប្រើនៅពេលដែលយើងដឹងចំនួនដងច្បាស់លាស់ដែលត្រូវឲ្យ Loop ដំណើរការ។

```dart
void main() {
  for (int i = 1; i <= 5; i++) {
    print('Count: $i');
  }
}

```

## ២. For-In Loop

ប្រើសម្រាប់បោះមើល (Iterate) ទិន្នន័យដែលមានក្នុង List ឬ Collection ផ្សេងៗ។

```dart
void main() {
  List<String> users = ['Alice', 'Bob', 'Charlie'];

  for (var user in users) {
    print('User name: $user');
  }
}

```

## ៣. While Loop

ប្រើនៅពេលដែលយើងមិនដឹងចំនួនដងច្បាស់លាស់ទេ ប៉ុន្តែដឹងលក្ខខណ្ឌដែលត្រូវឱ្យវាបន្តដំណើរការ។

```dart
void main() {
  int countdown = 3;

  while (countdown > 0) {
    print('Countdown: $countdown');
    countdown--;
  }
}

```

## ៤. Do-While Loop

ស្រដៀងទៅនឹង While Loop ដែរ ប៉ុន្តែវាធានាថាកូដខាងក្នុង block នឹងត្រូវរត់យ៉ាងហោចណាស់ ១ ដងសិន មុនពេលពិនិត្យលក្ខខណ្ឌ។

```dart
void main() {
  int number = 5;

  do {
    print('Number is: $number');
    number++;
  } while (number < 5);
}

```

---

# មេរៀនទី ៤៖ Break និង Continue

* **`break`**: ប្រើសម្រាប់បញ្ឈប់ (Exit) រង្វិលជុំចោលទាំងស្រុង។
* **`continue`**: ប្រើសម្រាប់រំលង (Skip) ជុំបច្ចុប្បន្ន ហើយបន្តទៅរង្វិលជុំបន្ទាប់។

```dart
void main() {
  // ឧទាហរណ៍ប្រើ break
  for (int i = 1; i <= 5; i++) {
    if (i == 3) {
      break; // ឈប់នៅពេល i ស្មើ 3
    }
    print('Break loop: $i'); // បង្ហាញ ១ និង ២
  }

  // ឧទាហរណ៍ប្រើ continue
  for (int j = 1; j <= 4; j++) {
    if (j == 2) {
      continue; // រំលងពេល j ស្មើ 2
    }
    print('Continue loop: $j'); // បង្ហាញ ១, ៣ និង ៤
  }
}

```