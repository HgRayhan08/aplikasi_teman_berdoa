import 'package:aplikasi_teman_berdoa/service/niat_sholat_service.dart';
import 'package:aplikasi_teman_berdoa/widget/expansitiontile_custom_widget.dart';
import 'package:flutter/material.dart';

class NiatSholatScreen extends StatelessWidget {
  static const routename = "/niatsholat";
  const NiatSholatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Niat Sholat"),
      ),
      body: FutureBuilder(
          future: NiatSholatService().niatsholat(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              // ignore: no_leading_underscores_for_local_identifiers
              var _niat = snapshot.data;
              return ListView.builder(
                  itemCount: _niat?.length,
                  itemBuilder: (context, index) {
                    return ExpansionTileCustom(
                      listdata: _niat,
                      titleExtend: _niat?[index].name ?? "",
                      titlelist: _niat?[index].arabic ?? "",
                      subtitle: _niat?[index].terjemahan ?? "",
                    );
                  });
            } else if (snapshot.hasError) {
              return const Text("error");
            } else {
              return const Center(
                child: CircularProgressIndicator(
                  strokeWidth: 5,
                ),
              );
            }
          }),
    );
  }
}
