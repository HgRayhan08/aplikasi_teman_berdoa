import 'package:aplikasi_teman_berdoa/provider/provider_bacaan_sholat.dart';
import 'package:aplikasi_teman_berdoa/widget/listTile_custom_widget.dart';
// ignore: unused_import
import 'package:aplikasi_teman_berdoa/widget/expansitiontile_custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BacaanSholatScreen extends StatelessWidget {
  static const routename = "/bacaansholat";
  const BacaanSholatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    final _bacaanSholat = Provider.of<ProviderBacaanSholat>(context);
    final mediaQueryHeight = MediaQuery.of(context).size.height;

    final myAppbar = AppBar(
      title: Text(
        "Teman Doa",
        style: GoogleFonts.nunito(
          fontSize: 25,
          fontWeight: FontWeight.w700,
        ),
      ),
      backgroundColor: const Color(0xff6096B4),
      bottomOpacity: 0,
      elevation: 0,
    );

    final bodyheight = mediaQueryHeight -
        myAppbar.preferredSize.height -
        MediaQuery.of(context).padding.top;

    return Scaffold(
      appBar: myAppbar,
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: bodyheight * 0.4,
            color: const Color(0xff6096B4),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: bodyheight * 0.1,
                    ),
                    Text(
                      "Mari Menghafal",
                      style: GoogleFonts.nunito(
                        fontSize: bodyheight * 0.033,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Bacaan Sholat",
                      style: GoogleFonts.nunito(
                        fontSize: bodyheight * 0.030,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  "assets/images/bacaan.png",
                  width: bodyheight * 0.26,
                ),
              ],
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: bodyheight * 0.3,
              ),
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: bodyheight * 0.7,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          color: Color(0xff146C94)),
                      child: FutureBuilder(
                        future: _bacaanSholat.bacaansholat(),
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
                                  terjemahan:
                                      _bacaansholat?[index].terjemahan ?? "",
                                  latin: _bacaansholat?[index].latin ?? "",
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}
