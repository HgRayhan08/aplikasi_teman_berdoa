import 'package:aplikasi_teman_berdoa/screen/Bacaan%20Sholat/bacaan_sholat_screen.dart';
import 'package:aplikasi_teman_berdoa/screen/dashboard_screen.dart';
import 'package:aplikasi_teman_berdoa/screen/Doa%20Screen/doa_harian_screen.dart';
import 'package:aplikasi_teman_berdoa/screen/Niat%20Screen/niat_sholat_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const DashboardScreen(),
      initialRoute: DashboardScreen.routename,
      routes: {
        DashboardScreen.routename: (context) => const DashboardScreen(),
        BacaanSholatScreen.routename: (context) => const BacaanSholatScreen(),
        DoaHarianScreen.routename: (context) => const DoaHarianScreen(),
        NiatSholatScreen.routename: (context) => const NiatSholatScreen(),
      },
    );
  }
}
