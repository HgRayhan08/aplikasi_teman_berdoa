import 'package:aplikasi_teman_berdoa/service/bacaan_sholat.service.dart';
import 'package:aplikasi_teman_berdoa/widget/expansitiontile_custom_widget.dart';
import 'package:flutter/material.dart';

class BacaanSholatScreen extends StatelessWidget {
  const BacaanSholatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bacaan Sholat"),
      ),
      body: FutureBuilder(
        future: BacaanSholatService().bacaansholat(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var _bacaansholat = snapshot.data;
            return ListView.builder(
              itemCount: _bacaansholat?.length,
              itemBuilder: (context, index) {
                return ExpansionTileCustom(
                  bacaansholat: _bacaansholat,
                  index: index,
                );
              },
            );
          } else if (snapshot.hasError) {
            return const Text("error");
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
