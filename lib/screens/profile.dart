import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Profile Page'),
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Theme.of(context).colorScheme.onPrimary,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                )
              ),
              child: const Column(
                children: [
                  Expanded(
                    child: CircleAvatar(
                      minRadius: 20,
                    ),
                  ),
                  Text(
                    "Online",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Nama: ",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
              )
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "No. KP: ",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
              )
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Alamat: ",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
              )
            ),
          ],
        )
    );
  }
}