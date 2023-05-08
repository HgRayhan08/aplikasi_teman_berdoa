import 'package:aplikasi_teman_berdoa/service/doa_service.dart';
import 'package:aplikasi_teman_berdoa/widget/listTile_custom_favorite.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoaHarianScreen extends StatelessWidget {
  static const routename = "/doaharian";
  const DoaHarianScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryheight = MediaQuery.of(context).size.height;

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

    final bodyHeight = mediaQueryheight -
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: bodyHeight * 0.13,
                    ),
                    Text(
                      "Mari Belajar",
                      style: GoogleFonts.nunito(
                        fontSize: bodyHeight * 0.040,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Doa Sehari-hari",
                      style: GoogleFonts.nunito(
                        fontSize: bodyHeight * 0.028,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  "assets/images/doa.png",
                  width: bodyHeight * 0.24,
                ),
              ],
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: bodyHeight * 0.3,
              ),
              Container(
                padding: const EdgeInsets.only(top: 12),
                height: bodyHeight * 0.7,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Color(0xff146C94),
                ),
                child: FutureBuilder(
                    future: DoaService().api(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        // ignore: no_leading_underscores_for_local_identifiers
                        var _doa = snapshot.data;
                        return ListView.builder(
                          itemCount: _doa?.length,
                          itemBuilder: (context, index) {
                            return ListTileFavoriteCustom(
                              namabacaan: _doa?[index].doa,
                              arab: _doa?[index].ayat,
                              latin: _doa?[index].latin,
                              terjemahan: _doa?[index].artinya,
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}
