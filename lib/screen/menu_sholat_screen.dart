import 'package:flutter/material.dart';

class MenuSholatScreen extends StatelessWidget {
  static const routename = "/menusholat";
  const MenuSholatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffA5D7E8),
      appBar: AppBar(
        backgroundColor: const Color(0xff19376D),
        title: const Text("Sholat"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            height: 180,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              color: Color(0xff19376D),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Niat Sholat",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                Image.asset("assets/images/niat.png"),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            height: 180,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              color: Color(0xff19376D),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text("Bacaan Sholat",
                    style: TextStyle(fontSize: 24, color: Colors.white)),
                Image.asset("assets/images/bacaan.png"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
