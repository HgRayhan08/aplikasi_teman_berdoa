import 'package:aplikasi_teman_berdoa/service/bacaan_sholat.service.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailDoaScreen extends StatelessWidget {
  final String namabacaan;
  final String arab;
  final String terjemahan;
  final String latin;

  const DetailDoaScreen({
    super.key,
    required this.namabacaan,
    required this.arab,
    required this.terjemahan,
    required this.latin,
  });

  @override
  Widget build(BuildContext context) {
    final bodyWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/latarbelakang.jpg"),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Color(0xff146C94),
          ),
          title: Text(
            "Bacaan Sholat",
            style: GoogleFonts.nunito(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: const Color(0xff146C94)),
          ),
          backgroundColor: Colors.transparent,
          bottomOpacity: 0,
          elevation: 0,
        ),
        body: FutureBuilder(
          future: BacaanSholatService().bacaansholat(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Center(
                child: ListView(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.topRight,
                          margin:
                              EdgeInsets.only(left: bodyWidth * 0.1, top: 10),
                          padding: const EdgeInsets.only(
                              right: 20, top: 10, left: 10, bottom: 10),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                            color: Color(0xff6096B4),
                          ),
                          child: Text(
                            namabacaan,
                            style: GoogleFonts.nunito(
                                fontSize: 25,
                                fontWeight: FontWeight.w800,
                                color: Colors.white),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(15),
                          margin: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xff146C94),
                          ),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Text(
                                  arab,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    latin,
                                    style: GoogleFonts.varelaRound(
                                      color: Colors.white,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          margin: const EdgeInsets.only(
                              left: 15, right: 15, bottom: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xff146C94),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Terjemahan :",
                                    style: GoogleFonts.varelaRound(
                                        color: Colors.white, fontSize: 19),
                                  ),
                                ),
                              ),
                              Text(
                                terjemahan,
                                style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
