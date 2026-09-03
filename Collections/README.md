មេរៀនស្តីពី **Collections (List, Set, Map)** នៅក្នុង **Dart Programming**

---

# មេរៀនទី ១៖ List (បញ្ជីទិន្នន័យ)

**List** គឺជាបណ្តុំទិន្នន័យរៀបតាមលំដាប់លំដោយ (Ordered Collection) ដែលអាចអនុញ្ញាតឱ្យមានតម្លៃស្ទួនគ្នាបាន។ ធាតុនីមួយៗនៅក្នុង List មានលេខរៀង (Index) ចាប់ផ្តើមពី `0`។

```dart
void main() {
  // ១. ការបង្កើត List ប្រភេទ String
  List<String> fruits = ['Apple', 'Banana', 'Orange'];

  // ២. ការបន្ថែមទិន្នន័យចូល List
  fruits.add('Mango');

  // ៣. ការអានទិន្នន័យតាម Index
  print(fruits[0]); // លទ្ធផល: Apple

  // ៤. ការប្រើប្រាស់ For-in loop เพื่อបោះមើលទិន្នន័យទាំងអស់
  for (var fruit in fruits) {
    print(fruit);
  }
}

```

---

# មេរៀនទី ២៖ Set (បញ្ជីទិន្នន័យមិនស្ទួន)

**Set** គឺជាបណ្តុំទិន្នន័យដែលគ្មានលំដាប់លំដោយច្បាស់លាស់ (Unordered Collection) ហើយសំខាន់បំផុតគឺ **មិនអនុញ្ញាតឱ្យមានតម្លៃស្ទួនគ្នាទេ** (រាល់ធាតុទាំងអស់គឺ Unique)។

```dart
void main() {
  // ១. ការបង្កើត Set ប្រើសញ្ញា {}
  Set<String> uniqueColors = {'Red', 'Green', 'Blue'};

  // ២. ការព្យាយាមបន្ថែមតម្លៃស្ទួន
  uniqueColors.add('Red'); // តម្លៃនេះនឹងត្រូវignore ដោយសារមានរួចហើយ

  // ៣. ការពិនិត្យមើលទិន្នន័យក្នុង Set
  print(uniqueColors.contains('Green')); // លទ្ធផល: true

  // បង្ហាញធាតុទាំងអស់ (នឹងចេញ Red, Green, Blue តែប៉ុណ្ណោះ)
  print(uniqueColors); 
}

```

---

# មេរៀនទី ៣៖ Map (ទិន្នន័យបែប Key-Value)

**Map** គឺជាបណ្តុំទិន្នន័យដែលរក្សាទុកក្នុងទម្រង់ជា **Key** និង **Value**។ Key ត្រូវតែជាតម្លៃខុសគ្នាពីគេ (Unique) ចំណែកឯ Value អាចស្ទួនគ្នាបាន។

```dart
void main() {
  // ១. ការបង្កើត Map សម្រាប់រក្សាទុកព័ត៌មាន User
  Map<String, dynamic> user = {
    'id': 101,
    'name': 'Dara',
    'email': 'dara@email.com',
  };

  // ២. ការអានទិន្នន័យដោយប្រើ Key
  print(user['name']); // លទ្ធផល: Dara

  // ៣. ការបន្ថែម ឬកែប្រែទិន្នន័យក្នុង Map
  user['age'] = 22;          // បន្ថែម Key ថ្មី
  user['email'] = 'new_email@email.com'; // កែប្រែ Value របស់ Key email

  // ៤. การបោះមើល Keys និង Values ទាំងអស់
  user.forEach((key, value) {
    print('$key: $value');
  });
}

```