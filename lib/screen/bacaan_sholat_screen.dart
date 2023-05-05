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
        title: const Text("Teman Doa"),
        backgroundColor: const Color(0xffA5D7E8),
        bottomOpacity: 0,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 250,
            color: const Color(0xffA5D7E8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(
                      height: 60,
                    ),
                    Text(
                      "Bacaan Sholat",
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "Mari hafalkan bacaan Sholat",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              const SizedBox(
                height: 230,
              ),
              Container(
                height: 510,
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
                            namabacaan: _bacaansholat?[index].name ?? "",
                            arab: _bacaansholat?[index].arabic ?? "",
                            terjemahan: _bacaansholat?[index].terjemahan ?? "",
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
