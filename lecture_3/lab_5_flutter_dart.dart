import 'package:flutter/material.dart';

// Copy this code into lib/main.dart in a Flutter project.
void main() {
  runApp(const CourseApp());
}

class CourseApp extends StatelessWidget {
  const CourseApp({super.key});

  @override
  Widget build(BuildContext context) {
    final String courseTitle = 'Advanced Mobile Programming';
    final int semester = 7;
    final List<String> topics = [
      'Dart basics',
      'Conditions and loops',
      'Lists',
      'Classes and constructors',
    ];
    final String selectedTopic = topics[1];
    final bool isActive = true;
    final String status = isActive ? 'Active' : 'Inactive';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Course Information')),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Course: $courseTitle'),
              Text('Semester: $semester'),
              Text('Selected topic: $selectedTopic'),
              Text('Status: $status'),
              const SizedBox(height: 16),
              const Text('All topics:', style: TextStyle(fontWeight: FontWeight.bold)),
              for (final topic in topics) Text('• $topic'),
            ],
          ),
        ),
      ),
    );
  }
}

// Uses class/extends, final, List<String>, a ternary condition,
// string interpolation, and const widgets.
