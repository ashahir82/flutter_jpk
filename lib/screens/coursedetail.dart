import 'package:flutter/material.dart';
import 'package:myfirstflutterporject/model/pelajar.dart';

class Coursedetail extends StatelessWidget {
  Pelajar pelajar;

  Coursedetail({required this.pelajar, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pelajar.name ?? '-'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Nama',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              pelajar.name ?? '-',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Jantina',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              pelajar.gender ?? '-',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
