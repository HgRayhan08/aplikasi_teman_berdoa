import 'package:aplikasi_teman_berdoa/service/niat_sholat_service.dart';
import 'package:aplikasi_teman_berdoa/widget/expansitiontile_custom_widget.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class NiatSholatScreen extends StatelessWidget {
  static const routename = "/niatsholat";
  const NiatSholatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;

    final myAppbar = AppBar(
      backgroundColor: const Color(0xff6096B4),
      bottomOpacity: 0.0,
      elevation: 0.0,
      surfaceTintColor: const Color(0xff146C94),
      title: Text(
        "Niat Sholat",
        style: GoogleFonts.openSans(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );

    final bodyHeight = mediaQueryHeight -
        myAppbar.preferredSize.height -
        MediaQuery.of(context).padding.top;

    return Scaffold(
      appBar: myAppbar,
      body: Stack(
        children: [
          Container(
            height: bodyHeight * 0.4,
            decoration: const BoxDecoration(
              color: Color(0xff6096B4),
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
                      SizedBox(
                        height: bodyHeight * 0.1,
                      ),
                      Text(
                        "Mari Menghafal",
                        style: GoogleFonts.nunito(
                          fontSize: bodyHeight * 0.034,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Niat Sholat",
                        style: GoogleFonts.nunito(
                          fontSize: bodyHeight * 0.030,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  "assets/images/niat.png",
                  width: bodyHeight * 0.26,
                )
              ],
            ),
          ),
          Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: bodyHeight * 0.3,
                  ),
                  Container(
                    height: bodyHeight * 0.7,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      color: Color(0xff146C94),
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
