import 'package:aplikasi_teman_berdoa/service/doa_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DoaHarianScreen extends StatelessWidget {
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
              var _doa = snapshot.data;
              return ListView.builder(
                itemCount: _doa?.data.length,
                itemBuilder: (context, index) {
                  return Text(_doa?.data[index].title ?? "");
                },
              );
              // return ListView.builder(
              //     itemCount: _doa?.length,
              //     itemBuilder: (context, index) {
              //       return ExpansionTile(
              //         title: Text(_doa?[index].doa ?? ""),
              //         children: [
              //           ListTile(
              //             title: Text(_doa?[index].ayat ?? ""),
              //             subtitle: Text(_doa?[index].artinya ?? ""),
              //           )
              //         ],
              //       );
              //     });
            } else if (snapshot.hasError) {
              return const Text("error");
            } else {
              return const CircularProgressIndicator();
            }
          }),
    );
  }
}
