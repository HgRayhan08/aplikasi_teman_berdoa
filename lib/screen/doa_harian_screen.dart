import 'package:aplikasi_teman_berdoa/service/doa_service.dart';
import 'package:aplikasi_teman_berdoa/widget/expansitiontile_custom_widget.dart';
import 'package:flutter/material.dart';

class DoaHarianScreen extends StatelessWidget {
  static const routename = "/doaharian";
  const DoaHarianScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Doa Harian"),
      ),
      body: FutureBuilder(
          future: DoaService().api(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              // ignore: no_leading_underscores_for_local_identifiers
              var _doa = snapshot.data;
              return ListView.builder(
                itemCount: _doa?.data.length,
                itemBuilder: (context, index) {
                  // return Text(_doa?.data[index].title ?? "");
                  return ExpansionTileCustom(
                    listdata: _doa,
                    titleExtend: _doa?.data[index].title ?? "",
                    titlelist: _doa?.data[index].arabic ?? "",
                    subtitle: _doa?.data[index].translation ?? "",
                  );
                },
              );
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
