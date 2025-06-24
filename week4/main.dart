import 'dart:io';

// String Manipulation
void stringManipulation(String input) {
  print("Original: $input");

  // Concatenation and Interpolation
  String name = "Dart";
  String combined = input + " " + name;
  print("Concatenated: $combined");
  print("Interpolated: Hello, ${input.toUpperCase()}!");

  // Substring
  if (input.length >= 4) {
    print("Substring (0-4): ${input.substring(0, 4)}");
  }

  // Case conversion
  print("Uppercase: ${input.toUpperCase()}");
  print("Lowercase: ${input.toLowerCase()}");

  // Reverse String
  String reversed = input.split('').reversed.join();
  print("Reversed: $reversed");

  // Length
  print("Length: ${input.length}");
}

// Collections: Lists, Sets, Maps
void collectionsDemo() {
  // List
  List<String> fruits = ['Apple', 'Banana'];
  fruits.add('Mango');
  fruits.remove('Banana');
  print("List: $fruits");

  // Set
  Set<int> numbers = {1, 2, 2, 3};
  numbers.add(4);
  numbers.remove(1);
  print("Set: $numbers");

  // Map
  Map<String, int> scores = {'Math': 90, 'English': 85};
  scores['Science'] = 95;
  scores.remove('Math');
  print("Map:");
  scores.forEach((key, value) => print("$key: $value"));
}

// File Handling
Future<void> fileHandlingDemo() async {
  try {
    File inputFile = File('input.txt');
    if (await inputFile.exists()) {
      String contents = await inputFile.readAsString();
      print("File Content:\n$contents");
    } else {
      print("input.txt not found. Skipping read.");
    }

    File outputFile = File('output.txt');
    await outputFile.writeAsString('This is new content written by Dart.\n');
    print("Data written to output.txt");
  } catch (e) {
    print("File operation failed: $e");
  }
}

// Date and Time
void dateTimeDemo() {
  DateTime now = DateTime.now();
  print("Current DateTime: $now");

  DateTime future = now.add(Duration(days: 5));
  print("5 Days Later: $future");

  DateTime past = now.subtract(Duration(days: 3));
  print("3 Days Ago: $past");

  Duration diff = future.difference(past);
  print("Difference in days: ${diff.inDays}");
}

// Combined Mini App
Future<void> miniApp() async {
  print("Enter a string:");
  String? userInput = stdin.readLineSync();

  if (userInput == null || userInput.isEmpty) {
    print("No input provided.");
    return;
  }

  // String manipulation
  String reversed = userInput.split('').reversed.join();
  int length = userInput.length;
  String upper = userInput.toUpperCase();

  // Store in list
  List<String> results = [
    "Original: $userInput",
    "Reversed: $reversed",
    "Length: $length",
    "Uppercase: $upper"
  ];

  // Timestamp
  String timestamp = DateTime.now().toString();

  // Save to file
  File logFile = File('log.txt');
  await logFile.writeAsString("[$timestamp]\n${results.join('\n')}\n\n", mode: FileMode.append);

  print("Entry logged successfully to log.txt");
}

// Main Runner
Future<void> main() async {
  print("\n--- String Manipulation ---");
  stringManipulation("Flutter");

  print("\n--- Collections Demo ---");
  collectionsDemo();

  print("\n--- File Handling Demo ---");
  await fileHandlingDemo();

  print("\n--- Date and Time Demo ---");
  dateTimeDemo();

  print("\n--- Combined Mini App ---");
  await miniApp();
}
