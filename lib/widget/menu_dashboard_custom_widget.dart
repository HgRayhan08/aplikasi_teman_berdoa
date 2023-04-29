import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MenuDashboardCustom extends StatelessWidget {
  String nama;
  Image image;
  String navigasi;

  MenuDashboardCustom({
    super.key,
    required this.nama,
    required this.image,
    required this.navigasi,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(navigasi);
      },
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          color: Color(0xff0B2447),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            image,
            Text(
              nama,
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
