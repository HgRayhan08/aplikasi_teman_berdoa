import 'package:aplikasi_teman_berdoa/screen/bacaan_sholat_screen.dart';
import 'package:aplikasi_teman_berdoa/screen/doa_harian_screen.dart';
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
                  color: Color(0xff8294C4),
                ),
                width: double.infinity,
                height: bodyHeight * 0.3,
              ),
              Positioned(
                top: 30,
                left: 25,
                child: Text(
                  "Teman Doa",
                  style: GoogleFonts.nunito(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 90,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    height: 220,
                    margin: const EdgeInsets.symmetric(horizontal: 15),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          "Assalamualaikum",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        Image.asset(
                          "assets/images/dashboard.png",
                          width: 200,
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
                            "assets/images/bacaan.png",
                          ),
                          navigasi: NiatSholatScreen.routename,
                        ),
                        MenuCustom(
                          mediaQueryWidth: MediaQueryWidth,
                          mediaQueryheight: MediaQueryHeight,
                          widthImage: MediaQueryHeight * 0.2,
                          text: "Bacaan Sholat",
                          image: Image.asset(
                            "assets/images/niat.png",
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
