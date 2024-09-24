import 'package:flutter/material.dart';

class Courses extends StatefulWidget {
  const Courses({super.key});

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  List<Map<String, String>> courses = [
    {'Kursus 1': 'Kursus 1 subtitle'},
    {'Kursus 2': 'Kursus 2 subtitle'},
    {'Kursus 3': 'Kursus 3 subtitle'},
    {'Kursus 4': 'Kursus 4 subtitle'},
    {'Kursus 5': 'Kursus 5 subtitle'},
    {'Kursus 6': 'Kursus 6 subtitle'},
    {'Kursus 7': 'Kursus 7 subtitle'},
    {'Kursus 8': 'Kursus 8 subtitle'},
    {'Kursus 9': 'Kursus 9 subtitle'},
    {'Kursus 10': 'Kursus 10 subtitle'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Senarai Kursus'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            tileColor: Colors.orange.shade200,
            iconColor: Colors.blue,
            title: Text(
              courses[index].keys.first,
            ),
            titleTextStyle: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            subtitle: Text(courses[index].values.first),
            subtitleTextStyle: const TextStyle(
              color: Colors.grey,
              fontStyle: FontStyle.italic,
            ),
            leading: const Icon(
              Icons.book,
              size: 40,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
            ),
          );
        },
        itemCount: courses.length,
      ),
    );
  }
}
