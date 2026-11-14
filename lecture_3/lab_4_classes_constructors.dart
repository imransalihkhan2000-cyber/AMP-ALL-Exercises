// Practical Lab 4 — Classes and Constructors
class Student {
  String name;
  String department;
  int semester;

  Student(this.name, this.department, this.semester);

  void displayInfo() {
    print('Name: $name | Department: $department | Semester: $semester');
  }
}

void main() {
  Student student1 = Student('Ahmad', 'Software Engineering', 7);
  Student student2 = Student('Sara', 'Computer Science', 5);
  Student student3 = Student('Omid', 'Information Technology', 6);

  List<Student> students = [student1, student2, student3];
  for (final student in students) {
    student.displayInfo();
  }
}
