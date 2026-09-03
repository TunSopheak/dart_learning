**មេរៀនស្តីពី Asynchronous Programming (Future, async, await) នៅក្នុង Dart Programming**

---

### មេរៀនទី ១៖ ស្គាល់ពី Asynchronous Programming គឺអ្វី?

ជាទូទៅ កូដនៅក្នុង Dart ត្រូវបានដំណើរការជាជួរតាមលំដាប់លំដោយ (Synchronous) ពីលើចុះក្រោម។ ប៉ុន្តែ ប្រសិនបើយើងមានកូដដែលត្រូវចំណាយពេលយូរ ដូចជាការទាញយកទិន្នន័យពី Server (API) ឬការអានទិន្នន័យពី File ប្រសិនបើប្រើ Synchronous វានឹងធ្វើឱ្យកម្មវិធីគាំង (Block) មិនអាចចុចធ្វើអ្វីផ្សេងបានទេ។ ហេតុនេះ ទើបយើងត្រូវការ **Asynchronous Programming** ដើម្បីឱ្យកម្មវិធីអាចបន្តដំណើរការការងារផ្សេងទៀតបាន ខណៈពេលកំពុងរង់ចាំលទ្ធផល។

---

### មេរៀនទី ២៖ Future គឺជាអ្វី?

**Future** គឺជា Object មួយដែលតំណាងឱ្យតម្លៃ ឬលទ្ធផលដែលនឹងត្រូវទទួលបាននៅពេលអនាគត (មិនទាន់ទទួលបានភ្លាមៗទេ ប៉ុន្តែនឹងបានមកឆាប់ៗនេះ)។

```dart
// ឧទាហរណ៍នៃការបង្កើត Future Function ដែលត្រឡប់តម្លៃ String បន្ទាប់ពីរយៈពេល 2 វិនាទី
Future<String> fetchUserData() {
  return Future.delayed(Duration(seconds: 2), () {
    return 'Fetched User: Dara';
  });
}

void main() {
  print('Start');
  
  // ហៅប្រើប្រាស់ Future function
  fetchUserData().then((result) {
    print(result);
  });

  print('End');
}
```

---

### មេរៀនទី ៣៖ ការប្រើប្រាស់ async និង await

ដើម្បីឱ្យកូដ Asynchronous មើលទៅងាយស្រួលអាន និងមានលក្ខណៈដូចកូដធម្មតា (Sequential) យើងនិយមប្រើប្រាស់ keyword **`async`** និង **`await`** ជំនួសឱ្យការប្រើ `.then()`។

```dart
// Function សម្រាប់ទាញយកទិន្នន័យ (ក្លែងធ្វើការស្នើសុំ API)
Future<String> downloadData() async {
  // ប្រើ await ដើម្បីរង់ចាំរហូតដល់ដំណើរការនេះរួចរាល់ ទើបបន្តកូដបន្ទាប់
  await Future.delayed(Duration(seconds: 3));
  return 'Download Complete!';
}

void main() async {
  print('Loading...');

  // រង់ចាំលទ្ធផលពី downloadData()
  String result = await downloadData();
  print(result);

  print('Process Finished.');
}
```

---

### មេរៀនទី ៤៖ ការគ្រប់គ្រង Error (Try-Catch with Async/Await)

ពេលដែលយើងទាញយកទិន្នន័យពី Network ឬ Database វាអាចនឹងមាន Error កើតឡើង (ឧទាហរណ៍៖ អត់មានអ៊ីនធឺណិត ឬរកមិនឃើញ Server)។ ដូចនេះ យើងត្រូវប្រើ **`try-catch`** ដើម្បីទប់ស្កាត់កំហុសទាំងនោះ។

```dart
Future<void> getUserProfile() async {
  try {
    // ក្លែងធ្វើកូដដែលបង្កឱ្យមាន Error
    await Future.delayed(Duration(seconds: 2));
    throw Exception('Failed to connect to server');
  } catch (e) {
    print('Error caught: $e');
  } finally {
    print('Task completed (Success or Fail)');
  }
}

void main() async {
  print('Fetching profile...');
  await getUserProfile();
}
```