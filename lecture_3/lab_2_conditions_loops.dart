// Practical Lab 2 — Conditions and Loops
String getGrade(double mark) {
  if (mark >= 90) return 'A';
  if (mark >= 80) return 'B';
  if (mark >= 70) return 'C';
  if (mark >= 60) return 'D';
  return 'F';
}

void main() {
  double mark = 84; // Defined sample mark.
  if (mark >= 50) {
    print('Result: Pass');
  } else {
    print('Result: Fail');
  }
  print('Grade: ${getGrade(mark)}');

  print('Numbers 1–20:');
  for (int number = 1; number <= 20; number++) {
    print(number);
  }

  print('Even numbers:');
  for (int number = 1; number <= 20; number++) {
    if (number % 2 == 0) print(number);
  }

  print('Numbers 1–5 using while:');
  int counter = 1;
  while (counter <= 5) {
    print(counter);
    counter++;
  }

  String status = mark >= 50 ? 'Passed' : 'Failed';
  print('Status: $status');
}
