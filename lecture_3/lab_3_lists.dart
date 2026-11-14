// Practical Lab 3 — Lists
void main() {
  List<String> courses = [
    'Dart', 'Flutter', 'Database', 'Networking', 'Operating Systems'
  ];

  print('First course: ${courses[0]}');
  print('Last course: ${courses[courses.length - 1]}');

  courses.add('Software Engineering');
  courses.remove('Networking');
  print('Updated courses: $courses');

  print('Contains Flutter: ${courses.contains("Flutter")}');

  print('All courses:');
  for (final course in courses) {
    print(course);
  }

  List<double> marks = [80, 75, 90, 85, 70];
  double total = 0;
  for (final mark in marks) {
    total += mark;
  }
  double average = total / marks.length;
  print('Marks: $marks');
  print('Total: $total');
  print('Average: $average');
}
