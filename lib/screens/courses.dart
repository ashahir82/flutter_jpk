import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:myfirstflutterporject/network/api.dart';

import '../model/pelajar.dart';

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

  List<Pelajar> pelajar = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    loadPelajar();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Senarai Kursus'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: pelajar.isNotEmpty
          ? ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  tileColor: Colors.orange.shade200,
                  iconColor: Colors.blue,
                  title: Text(
                    pelajar[index].name ?? '-',
                  ),
                  titleTextStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  subtitle: Text(pelajar[index].gender ?? '-'),
                  subtitleTextStyle: const TextStyle(
                    color: Colors.grey,
                    fontStyle: FontStyle.italic,
                  ),
                  leading: pelajar[index].statusHadir == 1
                      ? const Icon(
                          Icons.check_circle_outline,
                          size: 40,
                          color: Colors.green,
                        )
                      : const Icon(
                          Icons.cancel_outlined,
                          size: 40,
                          color: Colors.red,
                        ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                  ),
                );
              },
              itemCount: pelajar.length,
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }

  void loadPelajar() async {
    String url = 'khalifah/peserta';

    var res = await Network().getData(url);
    var body = json.decode(res.body);

    pelajar = (body as List).map((e) => Pelajar.fromJson(e)).toList();

    setState(() {});
  }
}
