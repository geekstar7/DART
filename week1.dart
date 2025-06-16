void main() {
  // DATA TYPES IMPLEMENTATION

  // 1. Define Variables
  int age = 20;
  double height = 5.9;
  String name = "Stallone";
  bool isStudent = true;
  List<int> scores = [12, 45, 7, 105, 99];

  print("Name: $name, Age: $age, Height: $height, Is Student: $isStudent");
  print("Scores: $scores");

  // 2. Type Conversion Functions
  String numberString = "42";
  print("String to int: ${stringToInt(numberString)}");
  print("String to double: ${stringToDouble(numberString)}");

  int number = 100;
  print("Int to String: ${intToString(number)}");
  print("Int to Double: ${intToDouble(number)}");

  // 3. Function for Conversion
  convertAndDisplay("25");

  // CONTROL FLOW

  // 4. If-Else Statements
  checkNumberSign(-3);
  checkVotingEligibility(17);

  // 5. Switch Case for Day of the Week
  printDayOfWeek(3);

  // 6. Loops
  print("\nFor loop (1 to 10):");
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  print("\nWhile loop (10 to 1):");
  int j = 10;
  while (j >= 1) {
    print(j);
    j--;
  }

  print("\nDo-While loop (1 to 5):");
  int k = 1;
  do {
    print(k);
    k++;
  } while (k <= 5);

  // COMBINING DATA TYPES AND CONTROL FLOW

  print("\nComplex Example: List analysis");
  List<int> numbers = [4, 13, 102, 8, 55];
  for (int num in numbers) {
    print("Number: $num");

    // Even or Odd
    if (num % 2 == 0) {
      print("-> Even");
    } else {
      print("-> Odd");
    }

    // Categorize using switch-like logic
    switch (true) {
      case true when num >= 1 && num <= 10:
        print("-> Category: Small");
        break;
      case true when num > 10 && num <= 100:
        print("-> Category: Medium");
        break;
      case true when num > 100:
        print("-> Category: Large");
        break;
      default:
        print("-> Category: Unknown");
    }

    print(""); // Newline between items
  }
}

// ---------- TYPE CONVERSION FUNCTIONS ----------

int stringToInt(String str) {
  return int.parse(str);
}

double stringToDouble(String str) {
  return double.parse(str);
}

String intToString(int num) {
  return num.toString();
}

double intToDouble(int num) {
  return num.toDouble();
}

void convertAndDisplay(String str) {
  int intValue = stringToInt(str);
  double doubleValue = stringToDouble(str);
  print("Converted '$str' to int: $intValue and double: $doubleValue");
}

// ---------- CONTROL FLOW FUNCTIONS ----------

void checkNumberSign(int number) {
  if (number > 0) {
    print("$number is positive.");
  } else if (number < 0) {
    print("$number is negative.");
  } else {
    print("Number is zero.");
  }
}

void checkVotingEligibility(int age) {
  if (age >= 18) {
    print("Eligible to vote.");
  } else {
    print("Not eligible to vote.");
  }
}

void printDayOfWeek(int day) {
  switch (day) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    case 6:
      print("Saturday");
      break;
    case 7:
      print("Sunday");
      break;
    default:
      print("Invalid day.");
  }
}
