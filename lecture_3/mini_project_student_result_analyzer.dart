// Mini Project — Student Result Analyzer
class Student {
  final String name;
  final List<double> marks;

  Student({required this.name, required this.marks});

  double calculateTotal() {
    double total = 0;
    for (final mark in marks) {
      total += mark;
    }
    return total;
  }

  double calculateAverage() {
    if (marks.isEmpty) return 0;
    return calculateTotal() / marks.length;
  }

  String getResult() =>
      calculateAverage() >= 50 ? 'Pass' : 'Fail';

  String getGrade() {
    final average = calculateAverage();
    if (average >= 90) return 'A';
    if (average >= 80) return 'B';
    if (average >= 70) return 'C';
    if (average >= 60) return 'D';
    return 'F';
  }

  void displayResult() {
    print('Student: $name');
    print('Marks: $marks');
    print('Total: ${calculateTotal()}');
    print('Average: ${calculateAverage().toStringAsFixed(2)}');
    print('Pass/Fail: ${getResult()}');
    print('Grade: ${getGrade()}');
    print('------------------------------');
  }
}

void main() {
  final student = Student(name: 'Ahmad', marks: [80, 75, 90, 85]);
  student.displayResult();
}

// The lecture does not set grading boundaries. This example assumes
// pass mark 50 and A/B/C/D boundaries 90/80/70/60.
