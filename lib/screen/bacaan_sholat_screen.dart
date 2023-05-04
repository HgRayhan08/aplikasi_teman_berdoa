import 'package:aplikasi_teman_berdoa/service/bacaan_sholat.service.dart';
import 'package:aplikasi_teman_berdoa/widget/listTile_custom_widget.dart';
// ignore: unused_import
import 'package:aplikasi_teman_berdoa/widget/expansitiontile_custom_widget.dart';
import 'package:flutter/material.dart';

class BacaanSholatScreen extends StatelessWidget {
  static const routename = "/bacaansholat";

  const BacaanSholatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0B2447),
      appBar: AppBar(
        title: const Text("Bacaan Sholat"),
        backgroundColor: const Color(0xffA5D7E8),
        bottomOpacity: 0,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            height: 300,
            color: const Color(0xffA5D7E8),
          ),
          Column(
            children: [
              const SizedBox(
                height: 250,
              ),
              Container(
                height: 500,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Color(0xff0B2447)),
                child: FutureBuilder(
                  future: BacaanSholatService().bacaansholat(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      // ignore: no_leading_underscores_for_local_identifiers
                      var _bacaansholat = snapshot.data;
                      return ListView.builder(
                        itemCount: _bacaansholat?.length,
                        itemBuilder: (context, index) {
                          return ListTileCustom(
                            title: _bacaansholat?[index].name ?? "",
                          );
                        },
                      );
                    } else if (snapshot.hasError) {
                      return const Center(
                        child: Text("Server Sedang dalam perbaikan"),
                      );
                    } else {
                      return const Center(
                        child: CircularProgressIndicator(
                          strokeWidth: 5,
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
