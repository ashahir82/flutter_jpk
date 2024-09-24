import 'package:flutter/material.dart';
import 'package:myfirstflutterporject/model/pelajar.dart';
import 'package:myfirstflutterporject/widget/customtile.dart';

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
            Customtile(title: "Nama", value: pelajar.name ?? 'N/A'),
            Customtile(title: "Jantina", value: pelajar.gender ?? 'N/A'),
            Customtile(
                title: "Umur",
                value: pelajar.age != null ? pelajar.age.toString() : 'N/A'),
            Customtile(
                title: "Nama Sekolah", value: pelajar.schoolname ?? 'N/A'),
            Customtile(
                title: "Nama Penjaga",
                value: pelajar.penjaga!.parentName ?? 'N/A'),
            Customtile(
                title: "Hubungan Penjaga",
                value: pelajar.penjaga!.parentingType ?? 'N/A'),
            Customtile(
                title: "No. Telefon", value: pelajar.penjaga!.nohp1 ?? 'N/A'),
            Customtile(
                title: "Alamat", value: pelajar.penjaga!.address ?? 'N/A'),
            pelajar.statusHadir == 1
                ? const Center(
                    child: Icon(
                      Icons.check_circle_outline,
                      size: 180,
                      color: Colors.green,
                    ),
                  )
                : const Center(
                    child: Icon(
                      Icons.cancel_outlined,
                      size: 180,
                      color: Colors.red,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
