import 'package:aplikasi_teman_berdoa/service/niat_sholat_service.dart';
import 'package:aplikasi_teman_berdoa/widget/expansitiontile_custom_widget.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class NiatSholatScreen extends StatelessWidget {
  static const routename = "/niatsholat";
  const NiatSholatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0B2447),
      appBar: AppBar(
        backgroundColor: const Color(0xffA5D7E8),
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: Text(
          "Niat Sholat",
          style: GoogleFonts.openSans(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: 300,
            decoration: const BoxDecoration(
              color: Color(0xffA5D7E8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 100,
                      ),
                      Text(
                        "Mari Menghafal",
                        style: GoogleFonts.nunito(
                            fontSize: 28, fontWeight: FontWeight.w800),
                      ),
                      Text(
                        "Niat Sholat",
                        style: GoogleFonts.nunito(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  "assets/images/niat.png",
                  width: 190,
                )
              ],
            ),
          ),
          Stack(
            children: [
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
                      color: Color(0xff0B2447),
                    ),
                    child: FutureBuilder(
                        future: NiatSholatService().niatsholat(),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            // ignore: no_leading_underscores_for_local_identifiers
                            var _niat = snapshot.data;
                            return ListView.builder(
                                shrinkWrap: true,
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
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
