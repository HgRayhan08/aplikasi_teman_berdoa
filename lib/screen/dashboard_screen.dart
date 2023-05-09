import 'package:aplikasi_teman_berdoa/screen/bacaan_sholat_screen.dart';
import 'package:aplikasi_teman_berdoa/screen/doa_harian_screen.dart';
import 'package:aplikasi_teman_berdoa/screen/favorite_doa_screen.dart';
import 'package:aplikasi_teman_berdoa/screen/niat_sholat_screen.dart';
import 'package:aplikasi_teman_berdoa/widget/menu_custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardScreen extends StatelessWidget {
  static const routename = "/dashboard";

  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final MediaQueryHeight = MediaQuery.of(context).size.height;

    // ignore: non_constant_identifier_names
    final MediaQueryWidth = MediaQuery.of(context).size.width;

    final bodyHeight = MediaQueryHeight - MediaQuery.of(context).padding.top;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/latarbelakang.jpg"),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  color: Color(0xff6096B4),
                ),
                width: double.infinity,
                height: bodyHeight * 0.3,
              ),
              Positioned(
                top: 15,
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: MediaQueryWidth * 0.05),
                  width: MediaQueryWidth,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Teman Doa",
                        style: GoogleFonts.nunito(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const FavoriteDoaScreen(),
                            ),
                          );
                        },
                        icon: const Icon(
                          Icons.bookmark,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 70,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(left: 7, right: 7, bottom: 10),
                    width: MediaQueryWidth,
                    height: bodyHeight * 0.33,
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/pembuka.jpg"),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 3,
                            offset: const Offset(5, 6))
                      ],
                    ),
                    child: Stack(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Assalamualaikum",
                                style: GoogleFonts.nunito(
                                    fontSize: 28,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black),
                              ),
                              Text(
                                "Yuk Mari Belajar Berdoa!",
                                style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 19,
                                    color: Colors.black),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          top: bodyHeight * 0.05,
                          left: bodyHeight * 0.2,
                          child: Image.asset(
                            "assets/images/dashboard.png",
                            width: bodyHeight * 0.35,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: bodyHeight * 0.5,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        MenuCustom(
                          mediaQueryWidth: MediaQueryWidth,
                          mediaQueryheight: MediaQueryHeight,
                          widthImage: MediaQueryHeight * 0.2,
                          text: "Doa Sehari-Hari",
                          image: Image.asset(
                            "assets/images/doa.png",
                          ),
                          navigasi: DoaHarianScreen.routename,
                        ),
                        MenuCustom(
                          mediaQueryWidth: MediaQueryWidth,
                          mediaQueryheight: MediaQueryHeight,
                          widthImage: MediaQueryHeight * 0.2,
                          text: "Niat Sholat",
                          image: Image.asset(
                            "assets/images/niat.png",
                          ),
                          navigasi: NiatSholatScreen.routename,
                        ),
                        MenuCustom(
                          mediaQueryWidth: MediaQueryWidth,
                          mediaQueryheight: MediaQueryHeight,
                          widthImage: MediaQueryHeight * 0.2,
                          text: "Bacaan Sholat",
                          image: Image.asset(
                            "assets/images/bacaan.png",
                          ),
                          navigasi: BacaanSholatScreen.routename,
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
