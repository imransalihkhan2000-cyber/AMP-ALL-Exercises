// Practical Lab 1 — Dart Basics
void main() {
  String studentName = 'Ahmad';
  int age = 21;
  int semester = 7;
  double gpa = 3.45;
  bool isActive = true;

  print('Student: $studentName');
  print('Age: $age');
  print('Semester: $semester');
  print('GPA: $gpa');
  print('Active: $isActive');

  int firstNumber = 20;
  int secondNumber = 6;
  print('Addition: ${firstNumber + secondNumber}');
  print('Subtraction: ${firstNumber - secondNumber}');
  print('Multiplication: ${firstNumber * secondNumber}');

  bool hasPassed = gpa >= 2.0;
  bool canContinue = isActive && hasPassed;
  bool needsSupport = gpa < 2.0 || !isActive;
  print('Has passed: $hasPassed');
  print('Can continue: $canContinue');
  print('Needs support: $needsSupport');

  // Type inference: String and int are inferred from initial values.
  var university = 'Kabul University';
  var completedCredits = 90;
  print('University: $university (${university.runtimeType})');
  print('Completed credits: $completedCredits (${completedCredits.runtimeType})');
}
// var university is inferred as String; completedCredits is inferred as int.
