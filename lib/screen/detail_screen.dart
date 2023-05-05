import 'package:aplikasi_teman_berdoa/service/bacaan_sholat.service.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String namabacaan;
  final String arab;
  final String terjemahan;
  final String latin;

  const DetailScreen(
      {super.key,
      required this.namabacaan,
      required this.arab,
      required this.terjemahan,
      required this.latin});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffA5D7E8),
      appBar: AppBar(
        title: const Text("Detail screen"),
      ),
      body: FutureBuilder(
        future: BacaanSholatService().bacaansholat(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      namabacaan,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xff0B2447)),
                    child: Text(
                      arab,
                      style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xff0B2447)),
                    child: Text(
                      terjemahan,
                      style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
