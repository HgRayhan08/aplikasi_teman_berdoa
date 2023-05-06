import 'package:aplikasi_teman_berdoa/screen/doa_harian_screen.dart';
import 'package:aplikasi_teman_berdoa/screen/menu_sholat_screen.dart';
import 'package:aplikasi_teman_berdoa/widget/menu_dashboard_custom_widget.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  static const routename = "/dashboard";

  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/latarbelakang.jpg"),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        // backgroundColor: const Color(0xffA5D7E8),
        // appBar: AppBar(
        //   title: const Text("sahabat muslim"),
        // ),
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
                height: 240,
              ),
              const Positioned(
                top: 30,
                left: 25,
                child: Text(
                  "Teman Doa",
                  style: TextStyle(
                    fontSize: 20,
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
                      // color: Color(0xff0B2447),
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
                    height: 200,
                    // color: Colors.green,
                    child: GridView.count(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                      children: [
                        MenuDashboardCustom(
                          nama: "Doa Harian",
                          image: Image.asset(
                            "assets/images/doa.png",
                            width: 90,
                          ),
                          navigasi: DoaHarianScreen.routename,
                        ),
                        MenuDashboardCustom(
                          nama: "Doa Harian",
                          image: Image.asset(
                            "assets/images/sholat.png",
                            width: 180,
                          ),
                          navigasi: MenuSholatScreen.routename,
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
