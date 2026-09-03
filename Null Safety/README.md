**មេរៀនស្តីពី Null Safety នៅក្នុង Dart Programming**

---

### មេរៀនទី ១៖ ស្គាល់ពី Null Safety គឺអ្វី?

បញ្ហា **NullPointerException** គឺជាកំហុសដ៏ល្បីល្បាញមួយដែលកើតឡើងនៅពេលដែលកម្មវិធីព្យាយាមប្រើប្រាស់ Variable ដែលមានតម្លៃជា `null` (គ្មានតម្លៃ)។ នៅក្នុងជំនាន់មុនៗរបស់ Dart វាម៉ាក់នឹងបង្កឱ្យ Crash កម្មវិធី។ ហេតុនេះ ទើប Dart បានណែនាំមុខងារ **Null Safety** ដើម្បីការពារកុំឱ្យ Variable ធម្មតាអាចផ្ទុកតម្លៃ `null` បានដោយស្វ័យប្រវត្តិ ដែលជួយឱ្យកូដមានសុវត្ថិភាពខ្ពស់។

---

### មេរៀនទី ២៖ Non-Nullable vs Nullable Types

តាមលំនាំដើម (Default) រាល់ Variable ទាំងអស់នៅក្នុង Dart គឺ **Non-Nullable** ដែលមានន័យថាវា**មិនអាច**ដាក់តម្លៃជា `null` បានឡើយ។ ប្រសិនបើចង់ឱ្យ Variable ណាមួយអាចទទួលតម្លៃ `null` បាន យើងត្រូវដាក់សញ្ញាសួរ `?` នៅខាងក្រោយ Data Type របស់វា។

```dart
void main() {
  // Non-Nullable: មិនអាចដាក់ null បានទេ
  String name = 'Dara'; 
  // name = null; // Error: នឹងកើត Error ពេល Compile

  // Nullable: អាចដាក់តម្លៃជា null បានដោយសារមានសញ្ញា ?
  String? nickName; 
  print(nickName); // លទ្ធផល: null
  
  nickName = 'Sok';
  print(nickName); // លទ្ធផល: Sok
}
```

---

### មេរៀនទី ៣៖ Null-Assertion Operator (`!`)

ប្រសិនបើយើងប្រាកដក្នុងចិត្ត ១០០% ថា Variable ប្រភេទ Nullable នាពេលបច្ចុប្បន្ន គឺពិតជាមានតម្លៃ (មិនមែន `null`) យើងអាចប្រើប្រាស់សញ្ញា `!` នៅខាងក្រោយ ដើម្បីបង្ខំ (Assert) ឱ្យ Dart យល់ថាវាមានតម្លៃ។

```dart
void main() {
  String? title = 'Flutter Development';

  // ប្រាប់ Dart ថា title ប្រាកដជាមិន null ទេ អាចយកទៅប្រើបាន
  int length = title!.length; 
  print('Length: $length');
}
```

---

### មេរៀនទី ៤៖ Null-Coalescing Operator (`??`)

សញ្ញា `??` ប្រើសម្រាប់ផ្ដល់តម្លៃជំនួស (Default Value) ក្នុងករណីដែល Variable នោះមានតម្លៃជា `null`។

```dart
void main() {
  String? username; // មានតម្លៃជា null

  // បើ username ជា null នោះវានឹងយកតម្លៃ 'Guest' មកជំនួសវិញ
  String displayName = username ?? 'Guest'; 
  
  print(displayName); // លទ្ធផល: Guest
}
```