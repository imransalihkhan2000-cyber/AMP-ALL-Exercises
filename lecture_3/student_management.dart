// Main Homework Assignment — Student Management
// Run: dart run student_management.dart

const double passMark = 50.0;

class Student {
  final String name;
  final String id;
  final int semester;
  final List<double> marks;

  Student({
    required this.name,
    required this.id,
    required this.semester,
    required this.marks,
  });

  double calculateAverage() {
    if (marks.isEmpty) return 0;
    double total = 0;
    for (final mark in marks) {
      total += mark;
    }
    return total / marks.length;
  }

  String getPassFail() =>
      calculateAverage() >= passMark ? 'Pass' : 'Fail';

  String getGrade() {
    final average = calculateAverage();
    if (average >= 90) return 'A';
    if (average >= 80) return 'B';
    if (average >= 70) return 'C';
    if (average >= 60) return 'D';
    return 'F';
  }

  void displayResult() {
    print('Student name: $name');
    print('Student ID: $id');
    print('Semester: $semester');
    print('Marks: $marks');
    print('Average: ${calculateAverage().toStringAsFixed(2)}');
    print('Result: ${getPassFail()}');
    print('Grade: ${getGrade()}');
    print('----------------------------------------');
  }
}

void main() {
  final List<Student> students = [
    Student(name: 'Ahmad', id: 'STU001', semester: 7, marks: [85, 90, 78, 88]),
    Student(name: 'Sara', id: 'STU002', semester: 6, marks: [92, 95, 89, 90]),
    Student(name: 'Omid', id: 'STU003', semester: 5, marks: [65, 70, 68, 72]),
    Student(name: 'Fatima', id: 'STU004', semester: 7, marks: [45, 55, 48, 50]),
    Student(name: 'Bilal', id: 'STU005', semester: 4, marks: [35, 40, 42, 38]),
  ];

  print('STUDENT MANAGEMENT SYSTEM');
  print('Pass mark: $passMark');
  print('Number of students: ${students.length}');
  print('========================================');

  for (final student in students) {
    student.displayResult();
  }
}

// Concepts: class, fields, constructor, methods, List<Student>, for-in,
// if conditions, final, const, and string interpolation.
// Grading assumption: pass mark 50; A=90+, B=80+, C=70+, D=60+, else F.
// Confirm with your instructor if your course uses different boundaries.
