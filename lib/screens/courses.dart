import 'package:flutter/material.dart';

class Courses extends StatefulWidget {
  const Courses({super.key});

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Senarai Kursus'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: ListView(
        itemExtent: 50,
        children: const [
          ListTile(
            tileColor: Colors.amber,
            iconColor: Colors.white,
            leading: Icon(
              Icons.book,
              size: 40,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 20,
            ),
            title: Text('Kursus 1'),
          ),
        ],
      ),
    );
  }
}
