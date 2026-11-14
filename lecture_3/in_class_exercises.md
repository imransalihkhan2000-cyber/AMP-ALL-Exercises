# In-Class Exercises — Worked Answers

The lecture lists five output-prediction tasks but does not provide the original five code snippets. These are five practice examples with answers, not the lecturer's original snippets.

## 1. Predict the output — five practice examples

### Example 1: Arithmetic

```dart
void main() {
  int a = 10;
  int b = 3;
  print(a + b);
  print(a / b);
  print(a ~/ b);
}
```

Output: `13`, `3.3333333333333335`, `3`. The `/` operator returns decimal division; `~/` truncates to an integer.

### Example 2: Condition

```dart
void main() {
  int score = 82;
  if (score >= 80) {
    print('Good');
  } else {
    print('Try again');
  }
}
```

Output: `Good`, because 82 is at least 80.

### Example 3: for loop

```dart
void main() {
  for (int i = 1; i <= 3; i++) {
    print(i);
  }
}
```

Output: 1, then 2, then 3, each on a new line.

### Example 4: List indexing

```dart
void main() {
  final names = ['Ali', 'Sara', 'Ahmad'];
  print(names[1]);
}
```

Output: `Sara`. Index 1 is the second element because indexing starts at zero.

### Example 5: String interpolation

```dart
void main() {
  String name = 'Sara';
  int semester = 6;
  print('$name is in semester $semester');
}
```

Output: `Sara is in semester 6`.

## 2. Correct a List index error

Incorrect:

```dart
var names = ['Ali', 'Sara'];
print(names[2]);
```

There are only two elements, at indexes 0 and 1. Correct version to print the last item:

```dart
var names = ['Ali', 'Sara'];
print(names[names.length - 1]);
```

Output: `Sara`.

## 3. Convert if/else into a ternary expression

Original:

```dart
String result;
if (mark >= 50) {
  result = 'Pass';
} else {
  result = 'Fail';
}
```

Ternary version:

```dart
String result = mark >= 50 ? 'Pass' : 'Fail';
```

Syntax: `condition ? valueIfTrue : valueIfFalse`.

## 4. Convert explicit types to var where appropriate

```dart
var name = 'Ahmad'; // inferred as String
var semester = 7;   // inferred as int
var gpa = 3.5;      // inferred as double
```

Dart infers each static type from the initial value. `var` does not allow unrelated types to be assigned later.

## 5. Decide between final and const

- `const int credits = 4;` — known at compile time.
- `final now = DateTime.now();` — assigned once, but determined at runtime.
- Neither variable can be reassigned.

## 6. Create a Student object and print its properties

```dart
class Student {
  String name;
  int semester;
  Student(this.name, this.semester);
}

void main() {
  final student = Student('Ahmad', 7);
  print('Name: ${student.name}, Semester: ${student.semester}');
}
```

Output: `Name: Ahmad, Semester: 7`. Student is the class, student is its object, and the constructor initializes its fields.
